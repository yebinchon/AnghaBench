; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_sym53c500_cs.c_sym53c500_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_sym53c500_cs.c_sym53c500_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__, %struct.scsi_info_t* }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_info_t = type { i32 }

@MANFID_MACNICA = common dso_local global i32 0, align 4
@MANFID_PIONEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @sym53c500_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c500_resume(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.scsi_info_t*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 1
  %6 = load %struct.scsi_info_t*, %struct.scsi_info_t** %5, align 8
  store %struct.scsi_info_t* %6, %struct.scsi_info_t** %3, align 8
  %7 = load %struct.scsi_info_t*, %struct.scsi_info_t** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MANFID_MACNICA, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = load %struct.scsi_info_t*, %struct.scsi_info_t** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MANFID_PIONEER, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.scsi_info_t*, %struct.scsi_info_t** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 152
  br i1 %22, label %23, label %42

23:                                               ; preds = %18, %12, %1
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 13
  %29 = call i32 @outb(i32 128, i64 %28)
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 9
  %35 = call i32 @outb(i32 36, i64 %34)
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 13
  %41 = call i32 @outb(i32 4, i64 %40)
  br label %42

42:                                               ; preds = %23, %18
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @SYM53C500_int_host_reset(i64 %46)
  ret i32 0
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @SYM53C500_int_host_reset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
