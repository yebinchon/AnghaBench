; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.vga_switcheroo_client = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)* }

@vgasr_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_switcheroo_client*)* @vga_switchon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_switchon(%struct.vga_switcheroo_client* %0) #0 {
  %2 = alloca %struct.vga_switcheroo_client*, align 8
  store %struct.vga_switcheroo_client* %0, %struct.vga_switcheroo_client** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0), align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32 (i32, i32)*, i32 (i32, i32)** %4, align 8
  %6 = icmp ne i32 (i32, i32)* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %2, align 8
  %12 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %15 = call i32 %10(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %2, align 8
  %18 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %2, align 8
  %23 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %26 = call i32 %21(i32 %24, i32 %25)
  %27 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
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
