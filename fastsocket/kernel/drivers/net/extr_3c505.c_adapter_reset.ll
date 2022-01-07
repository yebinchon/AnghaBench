; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_adapter_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_adapter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.TYPE_3__ = type { i8, i32 }

@ACRF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HSF_PCB_NAK = common dso_local global i32 0, align 4
@ATTN = common dso_local global i8 0, align 1
@DIR = common dso_local global i8 0, align 1
@FLSH = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [34 x i8] c"%s: start receive command failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @adapter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.TYPE_3__* @netdev_priv(%struct.net_device* %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  store i8 %10, i8* %5, align 1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @outb_control(i8 zeroext 0, %struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @inb_status(i32 %15)
  %17 = load i32, i32* @ACRF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %50, %20
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @inb_command(i32 %24)
  %26 = load i32, i32* @jiffies, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 2, %27
  %29 = sdiv i32 %28, 100
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %48, %21
  %33 = load i32, i32* @jiffies, align 4
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @time_before_eq(i32 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @inb_status(i32 %40)
  %42 = load i32, i32* @ACRF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %37, %32
  %47 = phi i1 [ false, %32 ], [ %45, %37 ]
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %32

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @inb_status(i32 %53)
  %55 = load i32, i32* @ACRF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %21, label %58

58:                                               ; preds = %50
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i32, i32* @HSF_PCB_NAK, align 4
  %61 = call i32 @set_hsf(%struct.net_device* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8, i8* %64, align 4
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @ATTN, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %66, %68
  %70 = load i8, i8* @DIR, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %69, %71
  %73 = trunc i32 %72 to i8
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @outb_control(i8 zeroext %73, %struct.net_device* %74)
  %76 = call i32 @mdelay(i32 10)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 4
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @ATTN, align 1
  %82 = zext i8 %81 to i32
  %83 = xor i32 %82, -1
  %84 = and i32 %80, %83
  %85 = trunc i32 %84 to i8
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 @outb_control(i8 zeroext %85, %struct.net_device* %86)
  %88 = call i32 @mdelay(i32 10)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 4
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @FLSH, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %92, %94
  %96 = trunc i32 %95 to i8
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = call i32 @outb_control(i8 zeroext %96, %struct.net_device* %97)
  %99 = call i32 @mdelay(i32 10)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 4
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @FLSH, align 1
  %105 = zext i8 %104 to i32
  %106 = xor i32 %105, -1
  %107 = and i32 %103, %106
  %108 = trunc i32 %107 to i8
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = call i32 @outb_control(i8 zeroext %108, %struct.net_device* %109)
  %111 = call i32 @mdelay(i32 10)
  %112 = load i8, i8* %5, align 1
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = call i32 @outb_control(i8 zeroext %112, %struct.net_device* %113)
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = call i32 @start_receive(%struct.net_device* %115, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %62
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %120, %62
  ret void
}

declare dso_local %struct.TYPE_3__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outb_control(i8 zeroext, %struct.net_device*) #1

declare dso_local i32 @inb_status(i32) #1

declare dso_local i32 @inb_command(i32) #1

declare dso_local i64 @time_before_eq(i32, i64) #1

declare dso_local i32 @set_hsf(%struct.net_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @start_receive(%struct.net_device*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
