; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_required_act.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_required_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.zfcp_unit = type { i32 }

@ZFCP_STATUS_COMMON_ERP_INUSE = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.zfcp_unit*)* @zfcp_erp_required_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_required_act(i32 %0, %struct.zfcp_adapter* %1, %struct.zfcp_port* %2, %struct.zfcp_unit* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca %struct.zfcp_port*, align 8
  %9 = alloca %struct.zfcp_unit*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_port* %2, %struct.zfcp_port** %8, align 8
  store %struct.zfcp_unit* %3, %struct.zfcp_unit** %9, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %107 [
    i32 128, label %16
    i32 129, label %46
    i32 130, label %56
    i32 131, label %86
  ]

16:                                               ; preds = %4
  %17 = load %struct.zfcp_unit*, %struct.zfcp_unit** %9, align 8
  %18 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %17, i32 0, i32 0
  %19 = call i32 @atomic_read(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %109

25:                                               ; preds = %16
  %26 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %27 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %26, i32 0, i32 0
  %28 = call i32 @atomic_read(i32* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %25
  store i32 0, i32* %5, align 4
  br label %109

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 130, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %39
  br label %46

46:                                               ; preds = %4, %45
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %48 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 130, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %46
  br label %56

56:                                               ; preds = %4, %55
  %57 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %58 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %57, i32 0, i32 0
  %59 = call i32 @atomic_read(i32* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %109

65:                                               ; preds = %56
  %66 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %66, i32 0, i32 0
  %68 = call i32 @atomic_read(i32* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %65
  store i32 0, i32* %5, align 4
  br label %109

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 131, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %79
  br label %86

86:                                               ; preds = %4, %85
  %87 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %88 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %87, i32 0, i32 0
  %89 = call i32 @atomic_read(i32* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %109

95:                                               ; preds = %86
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %109

106:                                              ; preds = %100, %95
  br label %107

107:                                              ; preds = %106, %4
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %105, %94, %78, %64, %38, %24
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
