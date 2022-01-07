; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchto_stage1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchto_stage1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vga_switcheroo_client = type { i64, i32 }

@vgasr_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VGA_SWITCHEROO_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_switcheroo_client*)* @vga_switchto_stage1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_switchto_stage1(%struct.vga_switcheroo_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vga_switcheroo_client*, align 8
  %4 = alloca %struct.vga_switcheroo_client*, align 8
  store %struct.vga_switcheroo_client* %0, %struct.vga_switcheroo_client** %3, align 8
  %5 = call %struct.vga_switcheroo_client* @find_active_client(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 0))
  store %struct.vga_switcheroo_client* %5, %struct.vga_switcheroo_client** %4, align 8
  %6 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %4, align 8
  %7 = icmp ne %struct.vga_switcheroo_client* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %11 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VGA_SWITCHEROO_OFF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %17 = call i32 @vga_switchon(%struct.vga_switcheroo_client* %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %20 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vga_set_default_device(i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.vga_switcheroo_client* @find_active_client(i32*) #1

declare dso_local i32 @vga_switchon(%struct.vga_switcheroo_client*) #1

declare dso_local i32 @vga_set_default_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
