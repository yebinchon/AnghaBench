; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_adapter_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_adapter_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"testing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"register test failure %s addr=%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"IRQ test failure %s IRQ=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"loopback test failure %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @adapter_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapter_test(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %3 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %4 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @DBGINFO(i8* %7)
  %9 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %10 = call i64 @register_test(%struct.slgt_info* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %22 = call i64 @irq_test(%struct.slgt_info* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %26 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %29 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30)
  br label %42

32:                                               ; preds = %20
  %33 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %34 = call i64 @loopback_test(%struct.slgt_info* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42, %12
  %44 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i64 @register_test(%struct.slgt_info*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @irq_test(%struct.slgt_info*) #1

declare dso_local i64 @loopback_test(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
