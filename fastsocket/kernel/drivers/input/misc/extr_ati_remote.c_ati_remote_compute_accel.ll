; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_compute_accel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_compute_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ati_remote = type { i64, i64 }

@ati_remote_compute_accel.accel = internal constant [7 x i8] c"\01\02\04\06\09\0D\14", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ati_remote*)* @ati_remote_compute_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote_compute_accel(%struct.ati_remote* %0) #0 {
  %2 = alloca %struct.ati_remote*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ati_remote* %0, %struct.ati_remote** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %8 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @msecs_to_jiffies(i32 250)
  %11 = add nsw i64 %9, %10
  %12 = call i64 @time_after(i64 %6, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %17 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %99

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %21 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @msecs_to_jiffies(i32 125)
  %24 = add i64 %22, %23
  %25 = call i64 @time_before(i64 %19, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ati_remote_compute_accel.accel, i64 0, i64 0), align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %98

30:                                               ; preds = %18
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %33 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @msecs_to_jiffies(i32 250)
  %36 = add i64 %34, %35
  %37 = call i64 @time_before(i64 %31, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ati_remote_compute_accel.accel, i64 0, i64 1), align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %97

42:                                               ; preds = %30
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %45 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @msecs_to_jiffies(i32 500)
  %48 = add i64 %46, %47
  %49 = call i64 @time_before(i64 %43, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ati_remote_compute_accel.accel, i64 0, i64 2), align 1
  %53 = sext i8 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %96

54:                                               ; preds = %42
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %57 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @msecs_to_jiffies(i32 1000)
  %60 = add i64 %58, %59
  %61 = call i64 @time_before(i64 %55, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ati_remote_compute_accel.accel, i64 0, i64 3), align 1
  %65 = sext i8 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %95

66:                                               ; preds = %54
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %69 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @msecs_to_jiffies(i32 1500)
  %72 = add i64 %70, %71
  %73 = call i64 @time_before(i64 %67, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ati_remote_compute_accel.accel, i64 0, i64 4), align 1
  %77 = sext i8 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %94

78:                                               ; preds = %66
  %79 = load i64, i64* %3, align 8
  %80 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %81 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @msecs_to_jiffies(i32 2000)
  %84 = add i64 %82, %83
  %85 = call i64 @time_before(i64 %79, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ati_remote_compute_accel.accel, i64 0, i64 5), align 1
  %89 = sext i8 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %93

90:                                               ; preds = %78
  %91 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ati_remote_compute_accel.accel, i64 0, i64 6), align 1
  %92 = sext i8 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %63
  br label %96

96:                                               ; preds = %95, %51
  br label %97

97:                                               ; preds = %96, %39
  br label %98

98:                                               ; preds = %97, %27
  br label %99

99:                                               ; preds = %98, %14
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
