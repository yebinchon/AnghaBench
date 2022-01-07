; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_nic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DS1981U\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Found %s NIC\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c" registration number %pM, CRC %02x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc3*)* @nic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_init(%struct.ioc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioc3*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ioc3* %0, %struct.ioc3** %3, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %1, %22
  %13 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %14 = call i32 @nic_find(%struct.ioc3* %13, i32* %8)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = and i32 %15, 255
  switch i32 %16, label %18 [
    i32 145, label %17
  ]

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %23

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %74

22:                                               ; preds = %18
  br label %12

23:                                               ; preds = %17
  %24 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %25 = call i32 @nic_reset(%struct.ioc3* %24)
  %26 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %27 = call i32 @nic_write_byte(%struct.ioc3* %26, i32 85)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %39, %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, 3
  %36 = ashr i32 %33, %35
  %37 = and i32 %36, 255
  %38 = call i32 @nic_write_byte(%struct.ioc3* %32, i32 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 8
  store i32 %44, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %56, %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 6
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 255
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 8
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 255
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %21
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @nic_find(%struct.ioc3*, i32*) #1

declare dso_local i32 @nic_reset(%struct.ioc3*) #1

declare dso_local i32 @nic_write_byte(%struct.ioc3*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
