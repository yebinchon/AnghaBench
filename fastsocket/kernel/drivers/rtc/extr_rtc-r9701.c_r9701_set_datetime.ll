; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-r9701.c_r9701_set_datetime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-r9701.c_r9701_set_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RHRCNT = common dso_local global i32 0, align 4
@RMINCNT = common dso_local global i32 0, align 4
@RSECCNT = common dso_local global i32 0, align 4
@RDAYCNT = common dso_local global i32 0, align 4
@RMONCNT = common dso_local global i32 0, align 4
@RYRCNT = common dso_local global i32 0, align 4
@RWKCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @r9701_set_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r9701_set_datetime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1900
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 2100
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 2000
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %115

20:                                               ; preds = %14
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @RHRCNT, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bin2bcd(i32 %25)
  %27 = call i32 @write_reg(%struct.device* %21, i32 %22, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  br label %40

32:                                               ; preds = %20
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* @RMINCNT, align 4
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bin2bcd(i32 %37)
  %39 = call i32 @write_reg(%struct.device* %33, i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %32, %30
  %41 = phi i32 [ %31, %30 ], [ %39, %32 ]
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* @RSECCNT, align 4
  %49 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bin2bcd(i32 %51)
  %53 = call i32 @write_reg(%struct.device* %47, i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %46, %44
  %55 = phi i32 [ %45, %44 ], [ %53, %46 ]
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  br label %68

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* @RDAYCNT, align 4
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bin2bcd(i32 %65)
  %67 = call i32 @write_reg(%struct.device* %61, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %60, %58
  %69 = phi i32 [ %59, %58 ], [ %67, %60 ]
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  br label %83

74:                                               ; preds = %68
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* @RMONCNT, align 4
  %77 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @bin2bcd(i32 %80)
  %82 = call i32 @write_reg(%struct.device* %75, i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %74, %72
  %84 = phi i32 [ %73, %72 ], [ %82, %74 ]
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  br label %98

89:                                               ; preds = %83
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load i32, i32* @RYRCNT, align 4
  %92 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %93 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 100
  %96 = call i32 @bin2bcd(i32 %95)
  %97 = call i32 @write_reg(%struct.device* %90, i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %89, %87
  %99 = phi i32 [ %88, %87 ], [ %97, %89 ]
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  br label %112

104:                                              ; preds = %98
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* @RWKCNT, align 4
  %107 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 1, %109
  %111 = call i32 @write_reg(%struct.device* %105, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %104, %102
  %113 = phi i32 [ %103, %102 ], [ %111, %104 ]
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @write_reg(%struct.device*, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
