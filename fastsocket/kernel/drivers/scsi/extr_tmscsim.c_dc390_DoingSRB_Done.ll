; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_DoingSRB_Done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_DoingSRB_Done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_acb = type { %struct.dc390_dcb* }
%struct.dc390_dcb = type { i32, %struct.dc390_dcb*, i64, %struct.dc390_srb* }
%struct.dc390_srb = type { %struct.scsi_cmnd*, %struct.dc390_srb* }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_acb*, %struct.scsi_cmnd*)* @dc390_DoingSRB_Done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_DoingSRB_Done(%struct.dc390_acb* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.dc390_acb*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.dc390_dcb*, align 8
  %6 = alloca %struct.dc390_dcb*, align 8
  %7 = alloca %struct.dc390_srb*, align 8
  %8 = alloca %struct.dc390_srb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_cmnd*, align 8
  store %struct.dc390_acb* %0, %struct.dc390_acb** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %11 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %12 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %11, i32 0, i32 0
  %13 = load %struct.dc390_dcb*, %struct.dc390_dcb** %12, align 8
  store %struct.dc390_dcb* %13, %struct.dc390_dcb** %5, align 8
  %14 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  store %struct.dc390_dcb* %14, %struct.dc390_dcb** %6, align 8
  %15 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %16 = icmp ne %struct.dc390_dcb* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %57

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %53, %18
  %20 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %21 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %20, i32 0, i32 3
  %22 = load %struct.dc390_srb*, %struct.dc390_srb** %21, align 8
  store %struct.dc390_srb* %22, %struct.dc390_srb** %7, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %40, %19
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %26 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %31 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %30, i32 0, i32 1
  %32 = load %struct.dc390_srb*, %struct.dc390_srb** %31, align 8
  store %struct.dc390_srb* %32, %struct.dc390_srb** %8, align 8
  %33 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %34 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %33, i32 0, i32 0
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %34, align 8
  store %struct.scsi_cmnd* %35, %struct.scsi_cmnd** %10, align 8
  %36 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %37 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %38 = call i32 @dc390_Free_insert(%struct.dc390_acb* %36, %struct.dc390_srb* %37)
  %39 = load %struct.dc390_srb*, %struct.dc390_srb** %8, align 8
  store %struct.dc390_srb* %39, %struct.dc390_srb** %7, align 8
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %45 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %47 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %46, i32 0, i32 3
  store %struct.dc390_srb* null, %struct.dc390_srb** %47, align 8
  %48 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %49 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %51 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %50, i32 0, i32 1
  %52 = load %struct.dc390_dcb*, %struct.dc390_dcb** %51, align 8
  store %struct.dc390_dcb* %52, %struct.dc390_dcb** %6, align 8
  br label %53

53:                                               ; preds = %43
  %54 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %55 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %56 = icmp ne %struct.dc390_dcb* %54, %55
  br i1 %56, label %19, label %57

57:                                               ; preds = %17, %53
  ret void
}

declare dso_local i32 @dc390_Free_insert(%struct.dc390_acb*, %struct.dc390_srb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
