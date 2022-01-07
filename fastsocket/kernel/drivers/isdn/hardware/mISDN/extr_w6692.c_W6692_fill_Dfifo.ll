; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_fill_Dfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_fill_Dfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i8*, i32, i64, %struct.dchannel }
%struct.dchannel = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32* }

@W_D_CMDR_XMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: fill_Dfifo\0A\00", align 1
@W_D_FIFO_THRESH = common dso_local global i32 0, align 4
@W_D_CMDR_XME = common dso_local global i32 0, align 4
@W_D_XFIFO = common dso_local global i64 0, align 8
@W_D_CMDR = common dso_local global i32 0, align 4
@FLG_BUSY_TIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: fill_Dfifo dbusytimer running\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DBUSY_TIMER_VALUE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_DFIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"D-send %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*)* @W6692_fill_Dfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_fill_Dfifo(%struct.w6692_hw* %0) #0 {
  %2 = alloca %struct.w6692_hw*, align 8
  %3 = alloca %struct.dchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %2, align 8
  %7 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %8 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %7, i32 0, i32 3
  store %struct.dchannel* %8, %struct.dchannel** %3, align 8
  %9 = load i32, i32* @W_D_CMDR_XMS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %11 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %15 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %120

19:                                               ; preds = %1
  %20 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %21 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %26 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %120

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @W_D_FIFO_THRESH, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @W_D_FIFO_THRESH, align 4
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @W_D_CMDR_XME, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %36
  %43 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %44 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %49 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %55 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %59 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @W_D_XFIFO, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @outsb(i64 %62, i32* %63, i32 %64)
  %66 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %67 = load i32, i32* @W_D_CMDR, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @WriteW6692(%struct.w6692_hw* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %71 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %72 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %71, i32 0, i32 2
  %73 = call i64 @test_and_set_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %42
  %76 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %77 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %81 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %80, i32 0, i32 1
  %82 = call i32 @del_timer(%struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %75, %42
  %84 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %85 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %84, i32 0, i32 1
  %86 = call i32 @init_timer(%struct.TYPE_6__* %85)
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i32, i32* @DBUSY_TIMER_VALUE, align 4
  %89 = load i32, i32* @HZ, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sdiv i32 %90, 1000
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %87, %92
  %94 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %95 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %98 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %97, i32 0, i32 1
  %99 = call i32 @add_timer(%struct.TYPE_6__* %98)
  %100 = load i32, i32* @debug, align 4
  %101 = load i32, i32* @DEBUG_HW_DFIFO, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %83
  %105 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %106 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %109 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @snprintf(i32 %107, i32 63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %110, i32 %111)
  %113 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %114 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @print_hex_dump_bytes(i32 %115, i32 %116, i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %18, %31, %104, %83
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @outsb(i64, i32*, i32) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
