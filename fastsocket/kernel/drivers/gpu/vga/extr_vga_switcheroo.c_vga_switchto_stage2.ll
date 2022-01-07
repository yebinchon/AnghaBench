; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchto_stage2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchto_stage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.vga_switcheroo_client = type { i32, i64, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i32)* }
%struct.fb_event = type { i64 }

@vgasr_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VGA_SWITCHEROO_OFF = common dso_local global i64 0, align 8
@FB_EVENT_REMAP_ALL_CONSOLE = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_switcheroo_client*)* @vga_switchto_stage2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_switchto_stage2(%struct.vga_switcheroo_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vga_switcheroo_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vga_switcheroo_client*, align 8
  %6 = alloca %struct.fb_event, align 8
  store %struct.vga_switcheroo_client* %0, %struct.vga_switcheroo_client** %3, align 8
  %7 = call %struct.vga_switcheroo_client* @find_active_client(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 1))
  store %struct.vga_switcheroo_client* %7, %struct.vga_switcheroo_client** %5, align 8
  %8 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %9 = icmp ne %struct.vga_switcheroo_client* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

11:                                               ; preds = %1
  %12 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %13 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %15 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @VGA_SWITCHEROO_OFF, align 8
  %18 = call i32 @set_audio_state(i32 %16, i64 %17)
  %19 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %20 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %25 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %6, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @FB_EVENT_REMAP_ALL_CONSOLE, align 4
  %29 = call i32 @fb_notifier_call_chain(i32 %28, %struct.fb_event* %6)
  br label %30

30:                                               ; preds = %23, %11
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %35 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %33(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %30
  %43 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %44 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = icmp ne i32 (i32)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %51 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %56 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %54(i32 %57)
  br label %59

59:                                               ; preds = %49, %42
  %60 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %61 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VGA_SWITCHEROO_ON, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %67 = call i32 @vga_switchoff(%struct.vga_switcheroo_client* %66)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %70 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @VGA_SWITCHEROO_ON, align 8
  %73 = call i32 @set_audio_state(i32 %71, i64 %72)
  %74 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %75 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %40, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.vga_switcheroo_client* @find_active_client(i32*) #1

declare dso_local i32 @set_audio_state(i32, i64) #1

declare dso_local i32 @fb_notifier_call_chain(i32, %struct.fb_event*) #1

declare dso_local i32 @vga_switchoff(%struct.vga_switcheroo_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
