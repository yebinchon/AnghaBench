; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_ns_nand_read_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_ns_nand_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.nandsim = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*)*, i64 }
%struct.mtd_info.0 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"read_buf: chip is disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"read_buf: ALE or CLE pin is high\0A\00", align 1
@STATE_DATAOUT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"read_buf: unexpected data output cycle, current state is %s\0A\00", align 1
@STATE_DATAOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"read_buf: too many bytes to read\0A\00", align 1
@OPT_AUTOINCR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"read_buf: switch to the next page (%#x)\0A\00", align 1
@ACTION_CPY = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @ns_nand_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns_nand_read_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nandsim*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.nand_chip*
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.nandsim*
  store %struct.nandsim* %15, %struct.nandsim** %7, align 8
  %16 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %17 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = call i32 @NS_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %184

23:                                               ; preds = %3
  %24 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %25 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %31 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23
  %36 = call i32 @NS_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %184

37:                                               ; preds = %29
  %38 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %39 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @STATE_DATAOUT_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %46 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @get_state_name(i32 %47)
  %49 = call i32 @NS_WARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %184

50:                                               ; preds = %37
  %51 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %52 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @NS_STATE(i32 %53)
  %55 = load i64, i64* @STATE_DATAOUT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %76, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.nand_chip*
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 0
  %68 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %67, align 8
  %69 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %70 = bitcast %struct.mtd_info* %69 to %struct.mtd_info.0*
  %71 = call i32 %68(%struct.mtd_info.0* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %58

79:                                               ; preds = %58
  br label %184

80:                                               ; preds = %50
  %81 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %82 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %89 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %87, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = call i32 @NS_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %96 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %97 = call i32 @NS_STATUS_FAILED(%struct.nandsim* %96)
  %98 = call i32 @switch_to_ready_state(%struct.nandsim* %95, i32 %97)
  br label %184

99:                                               ; preds = %80
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %102 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %106 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %104, %108
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @memcpy(i32* %100, i64 %109, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %115 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, %113
  store i64 %118, i64* %116, align 8
  %119 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %120 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %124 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %122, %126
  br i1 %127, label %128, label %183

128:                                              ; preds = %99
  %129 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %130 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @OPT_AUTOINCR, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %128
  %136 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %137 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @NS_STATE(i32 %138)
  %140 = load i64, i64* @STATE_DATAOUT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %135
  %143 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %144 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %147 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  %151 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %152 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %150, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %142
  %157 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %158 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %156, %142
  %163 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %164 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @NS_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %166)
  %168 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %169 = load i32, i32* @ACTION_CPY, align 4
  %170 = call i32 @do_state_action(%struct.nandsim* %168, i32 %169)
  br label %182

171:                                              ; preds = %135, %128
  %172 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %173 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @NS_STATE(i32 %174)
  %176 = load i64, i64* @STATE_READY, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %180 = call i32 @switch_state(%struct.nandsim* %179)
  br label %181

181:                                              ; preds = %178, %171
  br label %182

182:                                              ; preds = %181, %162
  br label %183

183:                                              ; preds = %182, %99
  br label %184

184:                                              ; preds = %183, %93, %79, %44, %35, %21
  ret void
}

declare dso_local i32 @NS_ERR(i8*) #1

declare dso_local i32 @NS_WARN(i8*, i32) #1

declare dso_local i32 @get_state_name(i32) #1

declare dso_local i64 @NS_STATE(i32) #1

declare dso_local i32 @switch_to_ready_state(%struct.nandsim*, i32) #1

declare dso_local i32 @NS_STATUS_FAILED(%struct.nandsim*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @NS_DBG(i8*, i64) #1

declare dso_local i32 @do_state_action(%struct.nandsim*, i32) #1

declare dso_local i32 @switch_state(%struct.nandsim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
