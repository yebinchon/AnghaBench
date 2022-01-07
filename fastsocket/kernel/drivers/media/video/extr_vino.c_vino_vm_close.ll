; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_vm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_vm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.vino_framebuffer* }
%struct.vino_framebuffer = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"vino_vm_close(): count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @vino_vm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_vm_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.vino_framebuffer*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 0
  %6 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  store %struct.vino_framebuffer* %6, %struct.vino_framebuffer** %3, align 8
  %7 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %8 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %12 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
