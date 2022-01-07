; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_flash_update_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_flash_update_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_flash = type { i32, i32, i32, i32, i8*, i64, i32, i8*, i32, i32 }

@BFA_STATUS_IOC_NON_OP = common dso_local global i32 0, align 4
@BFA_STATUS_FLASH_BAD_LEN = common dso_local global i32 0, align 4
@BFA_FLASH_PART_MFG = common dso_local global i32 0, align 4
@BFA_STATUS_EINVAL = common dso_local global i32 0, align 4
@BFA_STATUS_DEVBUSY = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_nw_flash_update_part(%struct.bfa_flash* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfa_flash*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.bfa_flash* %0, %struct.bfa_flash** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %18 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %19 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bfa_nw_ioc_is_operational(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* @BFA_STATUS_IOC_NON_OP, align 4
  store i32 %24, i32* %9, align 4
  br label %76

25:                                               ; preds = %8
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %14, align 4
  %30 = and i32 %29, 3
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %25
  %33 = load i32, i32* @BFA_STATUS_FLASH_BAD_LEN, align 4
  store i32 %33, i32* %9, align 4
  br label %76

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @BFA_FLASH_PART_MFG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @BFA_STATUS_EINVAL, align 4
  store i32 %39, i32* %9, align 4
  br label %76

40:                                               ; preds = %34
  %41 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %42 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @BFA_STATUS_DEVBUSY, align 4
  store i32 %46, i32* %9, align 4
  br label %76

47:                                               ; preds = %40
  %48 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %49 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %52 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %55 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %58 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %61 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %64 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %66 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %69 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %72 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bfa_flash*, %struct.bfa_flash** %10, align 8
  %74 = call i32 @bfa_flash_write_send(%struct.bfa_flash* %73)
  %75 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %47, %45, %38, %32, %23
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32 @bfa_nw_ioc_is_operational(i32) #1

declare dso_local i32 @bfa_flash_write_send(%struct.bfa_flash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
