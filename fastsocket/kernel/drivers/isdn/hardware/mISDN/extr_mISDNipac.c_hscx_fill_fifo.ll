; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 (i32, i64, i32*, i32)* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: B%1d %d/%d/%d\0A\00", align 1
@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@IPACX_XFIFOB = common dso_local global i64 0, align 8
@DEBUG_HW_BFIFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"B%1d-send %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*)* @hscx_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_fill_fifo(%struct.hscx_hw* %0) #0 {
  %2 = alloca %struct.hscx_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.hscx_hw* %0, %struct.hscx_hw** %2, align 8
  %6 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %7 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %167

12:                                               ; preds = %1
  %13 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %14 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %20 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %18, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %167

27:                                               ; preds = %12
  %28 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %29 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %35 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* @FLG_TRANSPARENT, align 4
  %41 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %42 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = call i64 @test_bit(i32 %40, i32* %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %50 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %27
  %54 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %55 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %27
  %58 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %59 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %64 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %69 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %73 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %66, i32 %67, i32 %71, i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %81 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, %79
  store i32 %84, i32* %82, align 8
  %85 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %86 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %57
  %94 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %95 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %97, align 8
  %99 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %100 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %105 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @IPACX_XFIFOB, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 %98(i32 %103, i64 %108, i32* %109, i32 %110)
  br label %131

112:                                              ; preds = %57
  %113 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %114 = call i32 @waitforXFW(%struct.hscx_hw* %113)
  %115 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %116 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %115, i32 0, i32 2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %118, align 8
  %120 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %121 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %120, i32 0, i32 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %126 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %3, align 4
  %130 = call i32 %119(i32 %124, i64 %127, i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %112, %93
  %132 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 8, i32 10
  %137 = call i32 @hscx_cmdr(%struct.hscx_hw* %132, i32 %136)
  %138 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %139 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @DEBUG_HW_BFIFO, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %131
  %146 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %147 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %150 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %154 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %153, i32 0, i32 2
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @snprintf(i32 %148, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %152, i8* %157, i32 %158)
  %160 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %161 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @print_hex_dump_bytes(i32 %162, i32 %163, i32* %164, i32 %165)
  br label %167

167:                                              ; preds = %11, %26, %145, %131
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @waitforXFW(%struct.hscx_hw*) #1

declare dso_local i32 @hscx_cmdr(%struct.hscx_hw*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
