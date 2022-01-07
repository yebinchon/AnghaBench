; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_ns_nand_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_ns_nand_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.nandsim = type { i32, i32, i32*, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.nand_chip = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"read_byte: chip is disabled, return %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"read_byte: ALE or CLE pin is high, return %#x\0A\00", align 1
@STATE_DATAOUT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"read_byte: unexpected data output cycle, state is %s return %#x\0A\00", align 1
@STATE_DATAOUT_STATUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"read_byte: return %#x status\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"read_byte: no more data to output, return %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"read_byte: read ID byte %d, total = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"read_byte: all bytes were read\0A\00", align 1
@OPT_AUTOINCR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"read_byte: switch to the next page (%#x)\0A\00", align 1
@ACTION_CPY = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @ns_nand_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_nand_read_byte(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nandsim*, align 8
  %5 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.nand_chip*
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.nandsim*
  store %struct.nandsim* %12, %struct.nandsim** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %14 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @NS_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %223

22:                                               ; preds = %1
  %23 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %24 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %30 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @NS_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %223

38:                                               ; preds = %28
  %39 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %40 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @STATE_DATAOUT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %47 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @get_state_name(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i8*, i32, ...) @NS_WARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %223

53:                                               ; preds = %38
  %54 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %55 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @NS_STATE(i32 %56)
  %58 = load i64, i64* @STATE_DATAOUT_STATUS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %62 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  %66 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %67 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %223

71:                                               ; preds = %53
  %72 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %73 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %77 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, i32, ...) @NS_WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %223

85:                                               ; preds = %71
  %86 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %87 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @NS_STATE(i32 %88)
  switch i64 %89, label %154 [
    i64 129, label %90
    i64 128, label %130
  ]

90:                                               ; preds = %85
  %91 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %92 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 8
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %97 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %101 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %5, align 4
  %106 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %107 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %129

111:                                              ; preds = %90
  %112 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %113 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %117 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = ashr i64 %119, 1
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @cpu_to_le16(i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %125 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 2
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %111, %95
  br label %156

130:                                              ; preds = %85
  %131 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %132 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %136 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %134, i64 %138)
  %140 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %141 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %144 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %5, align 4
  %149 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %150 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  br label %156

154:                                              ; preds = %85
  %155 = call i32 (...) @BUG()
  br label %156

156:                                              ; preds = %154, %130, %129
  %157 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %158 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %162 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %160, %164
  br i1 %165, label %166, label %221

166:                                              ; preds = %156
  %167 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %168 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %169 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @OPT_AUTOINCR, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %209

174:                                              ; preds = %166
  %175 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %176 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @NS_STATE(i32 %177)
  %179 = icmp eq i64 %178, 129
  br i1 %179, label %180, label %209

180:                                              ; preds = %174
  %181 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %182 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i64 0, i64* %183, align 8
  %184 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %185 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  %189 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %190 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp slt i64 %188, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %180
  %195 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %196 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %197, align 8
  br label %200

200:                                              ; preds = %194, %180
  %201 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %202 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %204)
  %206 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %207 = load i32, i32* @ACTION_CPY, align 4
  %208 = call i32 @do_state_action(%struct.nandsim* %206, i32 %207)
  br label %220

209:                                              ; preds = %174, %166
  %210 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %211 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @NS_STATE(i32 %212)
  %214 = load i64, i64* @STATE_READY, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %218 = call i32 @switch_state(%struct.nandsim* %217)
  br label %219

219:                                              ; preds = %216, %209
  br label %220

220:                                              ; preds = %219, %200
  br label %221

221:                                              ; preds = %220, %156
  %222 = load i32, i32* %5, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %221, %81, %60, %45, %34, %18
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @NS_ERR(i8*, i32) #1

declare dso_local i32 @NS_WARN(i8*, i32, ...) #1

declare dso_local i32 @get_state_name(i32) #1

declare dso_local i64 @NS_STATE(i32) #1

declare dso_local i32 @NS_DBG(i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @do_state_action(%struct.nandsim*, i32) #1

declare dso_local i32 @switch_state(%struct.nandsim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
