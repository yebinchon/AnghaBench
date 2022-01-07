; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_fb.c_netx_fb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_fb.c_netx_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_panel = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.clcd_board* }
%struct.clcd_board = type { i32 }

@netx_panel = common dso_local global %struct.clcd_panel* null, align 8
@fb_device = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@iomem_resource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netx_fb_init(%struct.clcd_board* %0, %struct.clcd_panel* %1) #0 {
  %3 = alloca %struct.clcd_board*, align 8
  %4 = alloca %struct.clcd_panel*, align 8
  store %struct.clcd_board* %0, %struct.clcd_board** %3, align 8
  store %struct.clcd_panel* %1, %struct.clcd_panel** %4, align 8
  %5 = load %struct.clcd_panel*, %struct.clcd_panel** %4, align 8
  store %struct.clcd_panel* %5, %struct.clcd_panel** @netx_panel, align 8
  %6 = load %struct.clcd_board*, %struct.clcd_board** %3, align 8
  store %struct.clcd_board* %6, %struct.clcd_board** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fb_device, i32 0, i32 0, i32 0), align 8
  %7 = call i32 @amba_device_register(%struct.TYPE_5__* @fb_device, i32* @iomem_resource)
  ret i32 %7
}

declare dso_local i32 @amba_device_register(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
