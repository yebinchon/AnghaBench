; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_sysfs_fcf_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_sysfs_fcf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_fcf = type { i32, %struct.fcoe_fcf_device*, i32, i32, i32, i32, i32, i32, i32, %struct.fcoe_ctlr* }
%struct.fcoe_fcf_device = type { %struct.fcoe_fcf*, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_ctlr = type { i32, i32 }
%struct.fcoe_ctlr_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"New FCF fab %16.16llx mac %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_fcf*)* @fcoe_sysfs_fcf_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_sysfs_fcf_add(%struct.fcoe_fcf* %0) #0 {
  %2 = alloca %struct.fcoe_fcf*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_ctlr_device*, align 8
  %5 = alloca %struct.fcoe_fcf_device, align 8
  %6 = alloca %struct.fcoe_fcf_device*, align 8
  %7 = alloca i32, align 4
  store %struct.fcoe_fcf* %0, %struct.fcoe_fcf** %2, align 8
  %8 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %9 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %8, i32 0, i32 9
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %9, align 8
  store %struct.fcoe_ctlr* %10, %struct.fcoe_ctlr** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %12 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %13 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %16 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %20 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %5, i32 0, i32 8
  store i32 %21, i32* %22, align 8
  %23 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %24 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %5, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %28 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %5, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %32 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %5, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %5, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %38 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %43 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %5, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %47 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %5, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %5, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %52 = call %struct.fcoe_ctlr_device* @fcoe_ctlr_to_ctlr_dev(%struct.fcoe_ctlr* %51)
  store %struct.fcoe_ctlr_device* %52, %struct.fcoe_ctlr_device** %4, align 8
  %53 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %54 = icmp ne %struct.fcoe_ctlr_device* %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %1
  %56 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %57 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %60 = call %struct.fcoe_fcf_device* @fcoe_fcf_device_add(%struct.fcoe_ctlr_device* %59, %struct.fcoe_fcf_device* %5)
  store %struct.fcoe_fcf_device* %60, %struct.fcoe_fcf_device** %6, align 8
  %61 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %6, align 8
  %62 = icmp ne %struct.fcoe_fcf_device* %61, null
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  %70 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %71 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %97

73:                                               ; preds = %55
  %74 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %6, align 8
  %75 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %74, i32 0, i32 0
  %76 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %75, align 8
  %77 = call i32 @BUG_ON(%struct.fcoe_fcf* %76)
  %78 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %79 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %6, align 8
  %80 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %79, i32 0, i32 0
  store %struct.fcoe_fcf* %78, %struct.fcoe_fcf** %80, align 8
  %81 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %6, align 8
  %82 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %83 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %82, i32 0, i32 1
  store %struct.fcoe_fcf_device* %81, %struct.fcoe_fcf_device** %83, align 8
  %84 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %85 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %73, %1
  %88 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %89 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %88, i32 0, i32 0
  %90 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %91 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %90, i32 0, i32 1
  %92 = call i32 @list_add(i32* %89, i32* %91)
  %93 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %94 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %87, %67
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.fcoe_ctlr_device* @fcoe_ctlr_to_ctlr_dev(%struct.fcoe_ctlr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fcoe_fcf_device* @fcoe_fcf_device_add(%struct.fcoe_ctlr_device*, %struct.fcoe_fcf_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG_ON(%struct.fcoe_fcf*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
