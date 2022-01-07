; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_iotov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_iotov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i32, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_itnim_iotov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_itnim_iotov(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_itnim_s*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.bfa_itnim_s*
  store %struct.bfa_itnim_s* %5, %struct.bfa_itnim_s** %3, align 8
  %6 = load i32, i32* @BFA_FALSE, align 4
  %7 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bfa_cb_itnim_tov_begin(i32 %11)
  %13 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %14 = call i32 @bfa_itnim_iotov_cleanup(%struct.bfa_itnim_s* %13)
  %15 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_cb_itnim_tov(i32 %17)
  ret void
}

declare dso_local i32 @bfa_cb_itnim_tov_begin(i32) #1

declare dso_local i32 @bfa_itnim_iotov_cleanup(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_cb_itnim_tov(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
