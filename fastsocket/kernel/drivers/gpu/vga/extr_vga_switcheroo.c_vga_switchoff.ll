; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32)* }
%struct.vga_switcheroo_client = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }

@VGA_SWITCHEROO_OFF = common dso_local global i32 0, align 4
@vgasr_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_switcheroo_client*)* @vga_switchoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_switchoff(%struct.vga_switcheroo_client* %0) #0 {
  %2 = alloca %struct.vga_switcheroo_client*, align 8
  store %struct.vga_switcheroo_client* %0, %struct.vga_switcheroo_client** %2, align 8
  %3 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %2, align 8
  %4 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %3, i32 0, i32 3
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32 (i32, i32)*, i32 (i32, i32)** %6, align 8
  %8 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %2, align 8
  %9 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VGA_SWITCHEROO_OFF, align 4
  %12 = call i32 %7(i32 %10, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = icmp ne i32 (i32, i32)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %2, align 8
  %22 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VGA_SWITCHEROO_OFF, align 4
  %25 = call i32 %20(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load i32, i32* @VGA_SWITCHEROO_OFF, align 4
  %28 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %2, align 8
  %29 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
