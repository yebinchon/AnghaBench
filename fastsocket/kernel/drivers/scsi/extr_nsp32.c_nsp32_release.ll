; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i64, i32, i32, i64 }

@NSP32_SG_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @nsp32_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pci_free_consistent(i32 %15, i32 4, i64 %18, i32 %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NSP32_SG_TABLE_SIZE, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pci_free_consistent(i32 %31, i32 %32, i64 %35, i32 %38)
  br label %40

40:                                               ; preds = %28, %23
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = call i32 @free_irq(i64 %48, %struct.TYPE_3__* %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @release_region(i64 %64, i64 %67)
  br label %69

69:                                               ; preds = %61, %56, %51
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @iounmap(i64 %77)
  br label %79

79:                                               ; preds = %74, %69
  ret i32 0
}

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @free_irq(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @release_region(i64, i64) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
