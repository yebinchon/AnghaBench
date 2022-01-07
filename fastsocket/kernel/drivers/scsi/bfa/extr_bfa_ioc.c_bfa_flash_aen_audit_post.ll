; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_flash_aen_audit_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_flash_aen_audit_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.bfad_s = type { i32 }
%struct.bfa_aen_entry_s = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@BFA_AEN_CAT_AUDIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, i32, i32, i32)* @bfa_flash_aen_audit_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_flash_aen_audit_post(%struct.bfa_ioc_s* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bfa_ioc_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfad_s*, align 8
  %10 = alloca %struct.bfa_aen_entry_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bfad_s*
  store %struct.bfad_s* %16, %struct.bfad_s** %9, align 8
  %17 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %18 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %10, align 8
  %19 = call i32 @bfad_get_aen_entry(%struct.bfad_s* %17, %struct.bfa_aen_entry_s* %18)
  %20 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %10, align 8
  %21 = icmp ne %struct.bfa_aen_entry_s* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %52

23:                                               ; preds = %4
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %10, align 8
  %30 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %10, align 8
  %35 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %10, align 8
  %40 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %10, align 8
  %44 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %45 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @BFA_AEN_CAT_AUDIT, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s* %43, %struct.bfad_s* %44, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @bfad_get_aen_entry(%struct.bfad_s*, %struct.bfa_aen_entry_s*) #1

declare dso_local i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s*, %struct.bfad_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
