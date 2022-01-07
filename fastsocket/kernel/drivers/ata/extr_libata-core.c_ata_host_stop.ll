; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_host_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_host_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ata_host = type { i32, i32, %struct.TYPE_4__*, %struct.ata_port** }
%struct.TYPE_4__ = type { i32 (%struct.ata_host*)* }
%struct.ata_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ata_port*)* }

@ATA_HOST_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @ata_host_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_host_stop(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ata_host* @dev_get_drvdata(%struct.device* %8)
  store %struct.ata_host* %9, %struct.ata_host** %5, align 8
  %10 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %11 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ATA_HOST_STARTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %48, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %22 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %27 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %26, i32 0, i32 3
  %28 = load %struct.ata_port**, %struct.ata_port*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %28, i64 %30
  %32 = load %struct.ata_port*, %struct.ata_port** %31, align 8
  store %struct.ata_port* %32, %struct.ata_port** %7, align 8
  %33 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %34 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %36, align 8
  %38 = icmp ne i32 (%struct.ata_port*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %25
  %40 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %43, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %46 = call i32 %44(%struct.ata_port* %45)
  br label %47

47:                                               ; preds = %39, %25
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %53 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.ata_host*)*, i32 (%struct.ata_host*)** %55, align 8
  %57 = icmp ne i32 (%struct.ata_host*)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %60 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.ata_host*)*, i32 (%struct.ata_host*)** %62, align 8
  %64 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %65 = call i32 %63(%struct.ata_host* %64)
  br label %66

66:                                               ; preds = %58, %51
  ret void
}

declare dso_local %struct.ata_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
