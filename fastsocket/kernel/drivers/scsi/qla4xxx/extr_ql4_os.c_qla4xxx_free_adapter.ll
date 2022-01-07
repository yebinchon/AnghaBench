; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_free_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_free_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_8__*, i64, i64, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@CSR_SCSI_PROCESSOR_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4xxx_free_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_free_adapter(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %3 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %4 = load i32, i32* @DID_NO_CONNECT, align 4
  %5 = shl i32 %4, 16
  %6 = call i32 @qla4xxx_abort_active_cmds(%struct.scsi_qla_host* %3, i32 %5)
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %10, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = call i32 %11(%struct.scsi_qla_host* %12)
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %15 = call i64 @is_qla40XX(%struct.scsi_qla_host* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i32, i32* @CSR_SCSI_PROCESSOR_INTR, align 4
  %19 = call i32 @set_rmask(i32 %18)
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 6
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @writel(i32 %19, i32* %23)
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @readl(i32* %28)
  br label %62

30:                                               ; preds = %1
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %32 = call i64 @is_qla8022(%struct.scsi_qla_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 5
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @writel(i32 0, i32* %38)
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @readl(i32* %43)
  br label %61

45:                                               ; preds = %30
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %47 = call i64 @is_qla8032(%struct.scsi_qla_host* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i32 @writel(i32 0, i32* %53)
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %56 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %55, i32 0, i32 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @readl(i32* %58)
  br label %60

60:                                               ; preds = %49, %45
  br label %61

61:                                               ; preds = %60, %34
  br label %62

62:                                               ; preds = %61, %17
  %63 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %64 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %69 = call i32 @qla4xxx_stop_timer(%struct.scsi_qla_host* %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %72 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %77 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @destroy_workqueue(i64 %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %82 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %87 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @destroy_workqueue(i64 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %92 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %94, align 8
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %97 = call i32 %95(%struct.scsi_qla_host* %96)
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %99 = call i64 @is_qla80XX(%struct.scsi_qla_host* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %90
  %102 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %103 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %105, align 8
  %107 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %108 = call i32 %106(%struct.scsi_qla_host* %107)
  %109 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %110 = call i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host* %109)
  %111 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %112 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %114, align 8
  %116 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %117 = call i32 %115(%struct.scsi_qla_host* %116)
  br label %118

118:                                              ; preds = %101, %90
  %119 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %120 = call i32 @qla4xxx_free_irqs(%struct.scsi_qla_host* %119)
  %121 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %122 = call i32 @qla4xxx_mem_free(%struct.scsi_qla_host* %121)
  ret void
}

declare dso_local i32 @qla4xxx_abort_active_cmds(%struct.scsi_qla_host*, i32) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @set_rmask(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_stop_timer(%struct.scsi_qla_host*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_free_irqs(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_mem_free(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
