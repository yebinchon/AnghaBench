; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_save_initial_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_save_initial_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@nc_scntl0 = common dso_local global i32 0, align 4
@nc_scntl3 = common dso_local global i32 0, align 4
@nc_dmode = common dso_local global i32 0, align 4
@nc_dcntl = common dso_local global i32 0, align 4
@nc_ctest3 = common dso_local global i32 0, align 4
@nc_ctest4 = common dso_local global i32 0, align 4
@nc_gpcntl = common dso_local global i32 0, align 4
@nc_stest1 = common dso_local global i32 0, align 4
@nc_stest2 = common dso_local global i32 0, align 4
@nc_stest4 = common dso_local global i32 0, align 4
@FE_C10 = common dso_local global i32 0, align 4
@nc_scntl4 = common dso_local global i32 0, align 4
@nc_ctest5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*)* @sym_save_initial_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_save_initial_setting(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  %3 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %4 = load i32, i32* @nc_scntl0, align 4
  %5 = call i32 @INB(%struct.sym_hcb* %3, i32 %4)
  %6 = and i32 %5, 10
  %7 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %8 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %10 = load i32, i32* @nc_scntl3, align 4
  %11 = call i32 @INB(%struct.sym_hcb* %9, i32 %10)
  %12 = and i32 %11, 7
  %13 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %14 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %16 = load i32, i32* @nc_dmode, align 4
  %17 = call i32 @INB(%struct.sym_hcb* %15, i32 %16)
  %18 = and i32 %17, 206
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %20 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %22 = load i32, i32* @nc_dcntl, align 4
  %23 = call i32 @INB(%struct.sym_hcb* %21, i32 %22)
  %24 = and i32 %23, 168
  %25 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %26 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %28 = load i32, i32* @nc_ctest3, align 4
  %29 = call i32 @INB(%struct.sym_hcb* %27, i32 %28)
  %30 = and i32 %29, 1
  %31 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %32 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %34 = load i32, i32* @nc_ctest4, align 4
  %35 = call i32 @INB(%struct.sym_hcb* %33, i32 %34)
  %36 = and i32 %35, 128
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %38 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %40 = load i32, i32* @nc_gpcntl, align 4
  %41 = call i32 @INB(%struct.sym_hcb* %39, i32 %40)
  %42 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %43 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %45 = load i32, i32* @nc_stest1, align 4
  %46 = call i32 @INB(%struct.sym_hcb* %44, i32 %45)
  %47 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %48 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %50 = load i32, i32* @nc_stest2, align 4
  %51 = call i32 @INB(%struct.sym_hcb* %49, i32 %50)
  %52 = and i32 %51, 32
  %53 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %54 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %56 = load i32, i32* @nc_stest4, align 4
  %57 = call i32 @INB(%struct.sym_hcb* %55, i32 %56)
  %58 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %59 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %61 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FE_C10, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %1
  %67 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %68 = load i32, i32* @nc_scntl4, align 4
  %69 = call i32 @INB(%struct.sym_hcb* %67, i32 %68)
  %70 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %71 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %70, i32 0, i32 11
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %73 = load i32, i32* @nc_ctest5, align 4
  %74 = call i32 @INB(%struct.sym_hcb* %72, i32 %73)
  %75 = and i32 %74, 4
  %76 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %77 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 4
  br label %85

78:                                               ; preds = %1
  %79 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %80 = load i32, i32* @nc_ctest5, align 4
  %81 = call i32 @INB(%struct.sym_hcb* %79, i32 %80)
  %82 = and i32 %81, 36
  %83 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %84 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %83, i32 0, i32 12
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %66
  ret void
}

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
