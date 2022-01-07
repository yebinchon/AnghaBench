; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_destroy_workq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_destroy_workq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_im_s = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_destroy_workq(%struct.bfad_im_s* %0) #0 {
  %2 = alloca %struct.bfad_im_s*, align 8
  store %struct.bfad_im_s* %0, %struct.bfad_im_s** %2, align 8
  %3 = load %struct.bfad_im_s*, %struct.bfad_im_s** %2, align 8
  %4 = icmp ne %struct.bfad_im_s* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load %struct.bfad_im_s*, %struct.bfad_im_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfad_im_s, %struct.bfad_im_s* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.bfad_im_s*, %struct.bfad_im_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfad_im_s, %struct.bfad_im_s* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @flush_workqueue(i32* %13)
  %15 = load %struct.bfad_im_s*, %struct.bfad_im_s** %2, align 8
  %16 = getelementptr inbounds %struct.bfad_im_s, %struct.bfad_im_s* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @destroy_workqueue(i32* %17)
  %19 = load %struct.bfad_im_s*, %struct.bfad_im_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfad_im_s, %struct.bfad_im_s* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %10, %5, %1
  ret void
}

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
