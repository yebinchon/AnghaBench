; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.scsi_info_t* }
%struct.scsi_info_t = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"SYM53C500_release(0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @SYM53C500_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SYM53C500_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.scsi_info_t*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 0
  %7 = load %struct.scsi_info_t*, %struct.scsi_info_t** %6, align 8
  store %struct.scsi_info_t* %7, %struct.scsi_info_t** %3, align 8
  %8 = load %struct.scsi_info_t*, %struct.scsi_info_t** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %12 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = call i32 @scsi_remove_host(%struct.Scsi_Host* %13)
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %24 = call i32 @free_irq(i64 %22, %struct.Scsi_Host* %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @release_region(i64 %38, i64 %41)
  br label %43

43:                                               ; preds = %35, %30, %25
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %45 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %44)
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %47 = call i32 @scsi_host_put(%struct.Scsi_Host* %46)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i64, %struct.Scsi_Host*) #1

declare dso_local i32 @release_region(i64, i64) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
