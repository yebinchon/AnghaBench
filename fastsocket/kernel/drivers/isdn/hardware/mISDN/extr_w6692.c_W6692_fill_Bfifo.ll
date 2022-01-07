; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_fill_Bfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_fill_Bfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_ch = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, %struct.w6692_hw* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.w6692_hw = type { i8*, i32 }

@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@W_B_CMDR_XMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: fill Bfifo\0A\00", align 1
@W_B_FIFO_THRESH = common dso_local global i32 0, align 4
@FLG_HDLC = common dso_local global i32 0, align 4
@W_B_CMDR_XME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: fill Bfifo%d/%d\0A\00", align 1
@W_B_XFIFO = common dso_local global i64 0, align 8
@W_B_CMDR = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_DFIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"B%1d-send %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_ch*)* @W6692_fill_Bfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_fill_Bfifo(%struct.w6692_ch* %0) #0 {
  %2 = alloca %struct.w6692_ch*, align 8
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.w6692_ch* %0, %struct.w6692_ch** %2, align 8
  %7 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %8 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = load %struct.w6692_hw*, %struct.w6692_hw** %9, align 8
  store %struct.w6692_hw* %10, %struct.w6692_hw** %3, align 8
  %11 = load i32, i32* @W_B_CMDR_RACT, align 4
  %12 = load i32, i32* @W_B_CMDR_XMS, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %15 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %19 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %121

24:                                               ; preds = %1
  %25 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %26 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %32 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %30, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %121

39:                                               ; preds = %24
  %40 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %41 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %47 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32* %51, i32** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @W_B_FIFO_THRESH, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* @W_B_FIFO_THRESH, align 4
  store i32 %56, i32* %4, align 4
  br label %69

57:                                               ; preds = %39
  %58 = load i32, i32* @FLG_HDLC, align 4
  %59 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %60 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = call i64 @test_bit(i32 %58, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @W_B_CMDR_XME, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %71 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %75 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %72, i32 %73, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %81 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, %79
  store i32 %84, i32* %82, align 8
  %85 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %86 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @W_B_XFIFO, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @outsb(i64 %89, i32* %90, i32 %91)
  %93 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %94 = load i32, i32* @W_B_CMDR, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @WriteW6692B(%struct.w6692_ch* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @debug, align 4
  %98 = load i32, i32* @DEBUG_HW_DFIFO, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %69
  %102 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %103 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %106 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %110 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @snprintf(i32 %104, i32 63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %108, i8* %111, i32 %112)
  %114 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %115 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @print_hex_dump_bytes(i32 %116, i32 %117, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %23, %38, %101, %69
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @outsb(i64, i32*, i32) #1

declare dso_local i32 @WriteW6692B(%struct.w6692_ch*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
