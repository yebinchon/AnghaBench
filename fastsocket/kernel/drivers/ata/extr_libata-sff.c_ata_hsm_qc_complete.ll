; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_hsm_qc_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_hsm_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*)*, i64 }

@AC_ERR_HSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*, i32)* @ata_hsm_qc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_hsm_qc_complete(%struct.ata_queued_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i64, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 2
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %5, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %16
  %20 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32 %22, i64 %23)
  %25 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %25, i32 %28)
  store %struct.ata_queued_cmd* %29, %struct.ata_queued_cmd** %3, align 8
  %30 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %31 = icmp ne %struct.ata_queued_cmd* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %19
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AC_ERR_HSM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %45 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %47, align 8
  %49 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %50 = call i32 %48(%struct.ata_port* %49)
  %51 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %52 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %51)
  br label %56

53:                                               ; preds = %32
  %54 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %55 = call i32 @ata_port_freeze(%struct.ata_port* %54)
  br label %56

56:                                               ; preds = %53, %43
  br label %57

57:                                               ; preds = %56, %19
  %58 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32 %60, i64 %61)
  br label %81

63:                                               ; preds = %16
  %64 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %65 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AC_ERR_HSM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %76 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %75)
  br label %80

77:                                               ; preds = %63
  %78 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %79 = call i32 @ata_port_freeze(%struct.ata_port* %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %57
  br label %109

82:                                               ; preds = %2
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %87 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @spin_lock_irqsave(i32 %88, i64 %89)
  %91 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %92 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %94, align 8
  %96 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %97 = call i32 %95(%struct.ata_port* %96)
  %98 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %99 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %98)
  %100 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %101 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32 %102, i64 %103)
  br label %108

105:                                              ; preds = %82
  %106 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %107 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %106)
  br label %108

108:                                              ; preds = %105, %85
  br label %109

109:                                              ; preds = %108, %81
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
