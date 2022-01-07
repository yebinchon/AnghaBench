; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_i2c_get_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_i2c_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme1737_data = type { i32, i32 }

@force_id = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dme1737_data*)* @dme1737_i2c_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_i2c_get_features(i32 %0, %struct.dme1737_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dme1737_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dme1737_data* %1, %struct.dme1737_data** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @dme1737_sio_enter(i32 %8)
  %10 = load i32, i32* @force_id, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @force_id, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dme1737_sio_inb(i32 %15, i32 32)
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 119
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 120
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 137
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %88

30:                                               ; preds = %24, %21, %17
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @dme1737_sio_outb(i32 %31, i32 7, i32 10)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @dme1737_sio_inb(i32 %33, i32 96)
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @dme1737_sio_inb(i32 %36, i32 97)
  %38 = or i32 %35, %37
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %88

43:                                               ; preds = %30
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 67
  %46 = call i32 @inb(i32 %45)
  %47 = and i32 %46, 12
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %51 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 32
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 68
  %57 = call i32 @inb(i32 %56)
  %58 = and i32 %57, 12
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %62 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 32
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 69
  %68 = call i32 @inb(i32 %67)
  %69 = and i32 %68, 12
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %73 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, 16
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 70
  %79 = call i32 @inb(i32 %78)
  %80 = and i32 %79, 12
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %84 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 16
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %76
  br label %88

88:                                               ; preds = %87, %40, %27
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @dme1737_sio_exit(i32 %89)
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @dme1737_sio_enter(i32) #1

declare dso_local i32 @dme1737_sio_inb(i32, i32) #1

declare dso_local i32 @dme1737_sio_outb(i32, i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @dme1737_sio_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
