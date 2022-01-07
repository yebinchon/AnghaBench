; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_scsi.h_next_SCp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_scsi.h_next_SCp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_pointer = type { i32, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_pointer*)* @next_SCp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_SCp(%struct.scsi_pointer* %0) #0 {
  %2 = alloca %struct.scsi_pointer*, align 8
  %3 = alloca i32, align 4
  store %struct.scsi_pointer* %0, %struct.scsi_pointer** %2, align 8
  %4 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call %struct.TYPE_4__* @sg_next(%struct.TYPE_4__* %12)
  %14 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %14, i32 0, i32 3
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32* @sg_virt(%struct.TYPE_4__* %22)
  %24 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.scsi_pointer*, %struct.scsi_pointer** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_4__* @sg_next(%struct.TYPE_4__*) #1

declare dso_local i32* @sg_virt(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
