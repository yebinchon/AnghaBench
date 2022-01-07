; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_build_smp_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_build_smp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_req = type { i8*, i8*, i32 }

@SMP_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.smp_req*, i32, i32)* @build_smp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_smp_cmd(i32 %0, i32 %1, %struct.smp_req* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smp_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.smp_req* %2, %struct.smp_req** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.smp_req*, %struct.smp_req** %8, align 8
  %13 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @cpu_to_le32(i32 %14)
  %16 = load %struct.smp_req*, %struct.smp_req** %8, align 8
  %17 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SMP_DIRECT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 %22, 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 %24, 16
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.smp_req*, %struct.smp_req** %8, align 8
  %28 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %33

29:                                               ; preds = %5
  %30 = call i8* @cpu_to_le32(i32 3)
  %31 = load %struct.smp_req*, %struct.smp_req** %8, align 8
  %32 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %21
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
