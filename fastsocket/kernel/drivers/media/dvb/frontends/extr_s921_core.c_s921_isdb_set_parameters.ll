; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_core.c_s921_isdb_set_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_core.c_s921_isdb_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s921_isdb_t = type { i32 (i32, i32, i32)*, i32 }
%struct.s921_isdb_t_transmission_mode_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s921_isdb_t*, %struct.s921_isdb_t_transmission_mode_params*)* @s921_isdb_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s921_isdb_set_parameters(%struct.s921_isdb_t* %0, %struct.s921_isdb_t_transmission_mode_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s921_isdb_t*, align 8
  %5 = alloca %struct.s921_isdb_t_transmission_mode_params*, align 8
  %6 = alloca i32, align 4
  store %struct.s921_isdb_t* %0, %struct.s921_isdb_t** %4, align 8
  store %struct.s921_isdb_t_transmission_mode_params* %1, %struct.s921_isdb_t_transmission_mode_params** %5, align 8
  %7 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %8 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %7, i32 0, i32 0
  %9 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %8, align 8
  %10 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %11 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 %9(i32 %12, i32 176, i32 160)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %15 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %15, align 8
  %17 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %18 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19, i32 178, i32 61)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %93

26:                                               ; preds = %2
  %27 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %28 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %27, i32 0, i32 0
  %29 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %28, align 8
  %30 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %31 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32, i32 179, i32 37)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %93

39:                                               ; preds = %26
  %40 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %41 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %40, i32 0, i32 0
  %42 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %41, align 8
  %43 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %44 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(i32 %45, i32 180, i32 139)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %93

52:                                               ; preds = %39
  %53 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %54 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %53, i32 0, i32 0
  %55 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %54, align 8
  %56 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %57 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %55(i32 %58, i32 181, i32 75)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %93

65:                                               ; preds = %52
  %66 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %67 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %66, i32 0, i32 0
  %68 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %67, align 8
  %69 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %70 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %68(i32 %71, i32 182, i32 63)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %93

78:                                               ; preds = %65
  %79 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %80 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %79, i32 0, i32 0
  %81 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %80, align 8
  %82 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %83 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %81(i32 %84, i32 183, i32 63)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %78
  %92 = load i32, i32* @E_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %88, %75, %62, %49, %36, %23
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
