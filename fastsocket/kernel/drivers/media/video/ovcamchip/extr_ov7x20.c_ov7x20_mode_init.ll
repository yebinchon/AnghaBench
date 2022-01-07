; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x20.c_ov7x20_mode_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x20.c_ov7x20_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_window = type { i32, i32 }
%struct.ovcamchip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_window*)* @ov7x20_mode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7x20_mode_init(%struct.i2c_client* %0, %struct.ovcamchip_window* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ovcamchip_window*, align 8
  %5 = alloca %struct.ovcamchip*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.ovcamchip_window* %1, %struct.ovcamchip_window** %4, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.ovcamchip* %8, %struct.ovcamchip** %5, align 8
  %9 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %10 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 32, i32 0
  %17 = call i32 @ov_write_mask(%struct.i2c_client* %12, i32 20, i32 %16, i32 32)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 32
  %23 = call i32 @ov_write_mask(%struct.i2c_client* %18, i32 40, i32 %22, i32 32)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 32, i32 58
  %29 = call i32 @ov_write(%struct.i2c_client* %24, i32 36, i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 48, i32 96
  %35 = call i32 @ov_write(%struct.i2c_client* %30, i32 37, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 64, i32 0
  %41 = call i32 @ov_write_mask(%struct.i2c_client* %36, i32 45, i32 %40, i32 64)
  %42 = load %struct.ovcamchip*, %struct.ovcamchip** %5, align 8
  %43 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %2
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 240, i32 144
  %52 = call i32 @ov_write_mask(%struct.i2c_client* %47, i32 103, i32 %51, i32 240)
  br label %53

53:                                               ; preds = %46, %2
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 32, i32 0
  %59 = call i32 @ov_write_mask(%struct.i2c_client* %54, i32 116, i32 %58, i32 32)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %61 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %62 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ov_write(%struct.i2c_client* %60, i32 17, i32 %63)
  ret i32 0
}

declare dso_local %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ov_write_mask(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ov_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
