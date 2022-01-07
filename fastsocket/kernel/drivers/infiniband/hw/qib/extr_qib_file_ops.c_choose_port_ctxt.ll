; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_choose_port_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_choose_port_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.qib_devdata = type { i32, i32, i32, %struct.qib_pportdata*, i64* }
%struct.qib_pportdata = type { i32 }
%struct.qib_user_info = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.qib_devdata*, i32, %struct.qib_user_info*)* @choose_port_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_port_ctxt(%struct.file* %0, %struct.qib_devdata* %1, i32 %2, %struct.qib_user_info* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_user_info*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.qib_devdata* %1, %struct.qib_devdata** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qib_user_info* %3, %struct.qib_user_info** %8, align 8
  store %struct.qib_pportdata* null, %struct.qib_pportdata** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 3
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i64 %20
  %22 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %21, i64 -1
  %23 = call i64 @usable(%struct.qib_pportdata* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @ENETDOWN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %144

28:                                               ; preds = %15
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 3
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %31, i64 %33
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i64 -1
  store %struct.qib_pportdata* %35, %struct.qib_pportdata** %9, align 8
  br label %36

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %4
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %59, %37
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %47, %41
  %57 = phi i1 [ false, %41 ], [ %55, %47 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %41

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %65 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %144

71:                                               ; preds = %62
  %72 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %73 = icmp ne %struct.qib_pportdata* %72, null
  br i1 %73, label %130, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %75, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %81 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %80, i32 0, i32 3
  %82 = load %struct.qib_pportdata*, %struct.qib_pportdata** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %82, i64 %84
  %86 = call i64 @usable(%struct.qib_pportdata* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %90 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %89, i32 0, i32 3
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %91, i64 %93
  store %struct.qib_pportdata* %94, %struct.qib_pportdata** %9, align 8
  br label %129

95:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %125, %95
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %99 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %104 = icmp ne %struct.qib_pportdata* %103, null
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %102, %96
  %107 = phi i1 [ false, %96 ], [ %105, %102 ]
  br i1 %107, label %108, label %128

108:                                              ; preds = %106
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %110 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %109, i32 0, i32 3
  %111 = load %struct.qib_pportdata*, %struct.qib_pportdata** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %111, i64 %113
  %115 = call i64 @usable(%struct.qib_pportdata* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %119 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %118, i32 0, i32 3
  %120 = load %struct.qib_pportdata*, %struct.qib_pportdata** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %120, i64 %122
  store %struct.qib_pportdata* %123, %struct.qib_pportdata** %9, align 8
  br label %124

124:                                              ; preds = %117, %108
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %96

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %88
  br label %130

130:                                              ; preds = %129, %71
  %131 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %132 = icmp ne %struct.qib_pportdata* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.file*, %struct.file** %5, align 8
  %137 = load %struct.qib_user_info*, %struct.qib_user_info** %8, align 8
  %138 = call i32 @setup_ctxt(%struct.qib_pportdata* %134, i32 %135, %struct.file* %136, %struct.qib_user_info* %137)
  br label %142

139:                                              ; preds = %130
  %140 = load i32, i32* @ENETDOWN, align 4
  %141 = sub nsw i32 0, %140
  br label %142

142:                                              ; preds = %139, %133
  %143 = phi i32 [ %138, %133 ], [ %141, %139 ]
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %142, %68, %25
  %145 = load i32, i32* %10, align 4
  ret i32 %145
}

declare dso_local i64 @usable(%struct.qib_pportdata*) #1

declare dso_local i32 @setup_ctxt(%struct.qib_pportdata*, i32, %struct.file*, %struct.qib_user_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
