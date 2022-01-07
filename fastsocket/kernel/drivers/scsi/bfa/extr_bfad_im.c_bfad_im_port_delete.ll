; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_port_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_port_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bfad_port_s = type { %struct.bfad_im_port_s* }
%struct.bfad_im_port_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_im_port_delete(%struct.bfad_s* %0, %struct.bfad_port_s* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca %struct.bfad_port_s*, align 8
  %5 = alloca %struct.bfad_im_port_s*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store %struct.bfad_port_s* %1, %struct.bfad_port_s** %4, align 8
  %6 = load %struct.bfad_port_s*, %struct.bfad_port_s** %4, align 8
  %7 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %6, i32 0, i32 0
  %8 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %7, align 8
  store %struct.bfad_im_port_s* %8, %struct.bfad_im_port_s** %5, align 8
  %9 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %14, i32 0, i32 0
  %16 = call i32 @queue_work(i32 %13, i32* %15)
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
