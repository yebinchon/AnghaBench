; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_nic_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_nic_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3 = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"NIC search failed (not fatal).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ioc3*, i32*)* @nic_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nic_find(%struct.ioc3* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ioc3*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ioc3* %0, %struct.ioc3** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.ioc3*, %struct.ioc3** %4, align 8
  %12 = call i32 @nic_reset(%struct.ioc3* %11)
  %13 = load %struct.ioc3*, %struct.ioc3** %4, align 8
  %14 = call i32 @nic_write_byte(%struct.ioc3* %13, i32 240)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %101, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 64
  br i1 %17, label %18, label %104

18:                                               ; preds = %15
  %19 = load %struct.ioc3*, %struct.ioc3** %4, align 8
  %20 = call i32 @nic_read_bit(%struct.ioc3* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ioc3*, %struct.ioc3** %4, align 8
  %22 = call i32 @nic_read_bit(%struct.ioc3* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %5, align 8
  store i32 0, i32* %30, align 4
  store i64 0, i64* %3, align 8
  br label %108

31:                                               ; preds = %25, %18
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = load i64, i64* %10, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %10, align 8
  br label %72

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 1, %55
  %57 = xor i64 %56, -1
  %58 = load i64, i64* %10, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %9, align 4
  br label %71

61:                                               ; preds = %48
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = and i64 %62, %65
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %61
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %42
  %73 = load %struct.ioc3*, %struct.ioc3** %4, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = and i64 %74, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @nic_write_bit(%struct.ioc3* %73, i32 %79)
  br label %101

81:                                               ; preds = %34, %31
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = shl i64 1, %86
  %88 = load i64, i64* %10, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %10, align 8
  br label %97

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = shl i64 1, %92
  %94 = xor i64 %93, -1
  %95 = load i64, i64* %10, align 8
  %96 = and i64 %95, %94
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %90, %84
  %98 = load %struct.ioc3*, %struct.ioc3** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @nic_write_bit(%struct.ioc3* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %72
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %15

104:                                              ; preds = %15
  %105 = load i32, i32* %9, align 4
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i64, i64* %10, align 8
  store i64 %107, i64* %3, align 8
  br label %108

108:                                              ; preds = %104, %28
  %109 = load i64, i64* %3, align 8
  ret i64 %109
}

declare dso_local i32 @nic_reset(%struct.ioc3*) #1

declare dso_local i32 @nic_write_byte(%struct.ioc3*, i32) #1

declare dso_local i32 @nic_read_bit(%struct.ioc3*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @nic_write_bit(%struct.ioc3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
