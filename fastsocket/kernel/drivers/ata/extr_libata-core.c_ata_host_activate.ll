; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_host_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_host_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, i32* }
%struct.scsi_host_template = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"irq %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_host_activate(%struct.ata_host* %0, i32 %1, i32 %2, i64 %3, %struct.scsi_host_template* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.scsi_host_template*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_host* %0, %struct.ata_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.scsi_host_template* %4, %struct.scsi_host_template** %11, align 8
  %14 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %15 = call i32 @ata_host_start(%struct.ata_host* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %6, align 4
  br label %81

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %27 = load %struct.scsi_host_template*, %struct.scsi_host_template** %11, align 8
  %28 = call i32 @ata_host_register(%struct.ata_host* %26, %struct.scsi_host_template* %27)
  store i32 %28, i32* %6, align 4
  br label %81

29:                                               ; preds = %20
  %30 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %31 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %37 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_driver_string(i32 %38)
  %40 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %41 = call i32 @devm_request_irq(i32 %32, i32 %33, i32 %34, i64 %35, i32 %39, %struct.ata_host* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %81

46:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %50 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %55 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ata_port_desc(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %68 = load %struct.scsi_host_template*, %struct.scsi_host_template** %11, align 8
  %69 = call i32 @ata_host_register(%struct.ata_host* %67, %struct.scsi_host_template* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %74 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %78 = call i32 @devm_free_irq(i32 %75, i32 %76, %struct.ata_host* %77)
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %44, %23, %18
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @ata_host_start(%struct.ata_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ata_host_register(%struct.ata_host*, %struct.scsi_host_template*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i64, i32, %struct.ata_host*) #1

declare dso_local i32 @dev_driver_string(i32) #1

declare dso_local i32 @ata_port_desc(i32, i8*, i32) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.ata_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
