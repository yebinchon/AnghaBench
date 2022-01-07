; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@decckm = common dso_local global i32 0, align 4
@decarm = common dso_local global i32 0, align 4
@lnm = common dso_local global i32 0, align 4
@deccolm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mode(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %130, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %7, %10
  br i1 %11, label %12, label %133

12:                                               ; preds = %6
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 12
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %100

17:                                               ; preds = %12
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %99 [
    i32 1, label %25
    i32 3, label %37
    i32 5, label %41
    i32 6, label %59
    i32 7, label %65
    i32 8, label %69
    i32 9, label %81
    i32 25, label %88
    i32 1000, label %92
  ]

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = load i32, i32* @decckm, align 4
  %31 = call i32 @set_kbd(%struct.vc_data* %29, i32 %30)
  br label %36

32:                                               ; preds = %25
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = load i32, i32* @decckm, align 4
  %35 = call i32 @clr_kbd(%struct.vc_data* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %99

37:                                               ; preds = %17
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %99

41:                                               ; preds = %17
  %42 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @invert_screen(%struct.vc_data* %51, i32 0, i32 %54, i32 0)
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = call i32 @update_attr(%struct.vc_data* %56)
  br label %58

58:                                               ; preds = %47, %41
  br label %99

59:                                               ; preds = %17
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %64 = call i32 @gotoxay(%struct.vc_data* %63, i32 0, i32 0)
  br label %99

65:                                               ; preds = %17
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  br label %99

69:                                               ; preds = %17
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %74 = load i32, i32* @decarm, align 4
  %75 = call i32 @set_kbd(%struct.vc_data* %73, i32 %74)
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %78 = load i32, i32* @decarm, align 4
  %79 = call i32 @clr_kbd(%struct.vc_data* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  br label %99

81:                                               ; preds = %17
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  br label %99

88:                                               ; preds = %17
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  br label %99

92:                                               ; preds = %17
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 2, i32 0
  %97 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %17, %92, %88, %81, %80, %65, %59, %58, %37, %36
  br label %129

100:                                              ; preds = %12
  %101 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %102 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %128 [
    i32 3, label %108
    i32 4, label %112
    i32 20, label %116
  ]

108:                                              ; preds = %100
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %111 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  br label %128

112:                                              ; preds = %100
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %115 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  br label %128

116:                                              ; preds = %100
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %121 = load i32, i32* @lnm, align 4
  %122 = call i32 @set_kbd(%struct.vc_data* %120, i32 %121)
  br label %127

123:                                              ; preds = %116
  %124 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %125 = load i32, i32* @lnm, align 4
  %126 = call i32 @clr_kbd(%struct.vc_data* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %100, %127, %112, %108
  br label %129

129:                                              ; preds = %128, %99
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %6

133:                                              ; preds = %6
  ret void
}

declare dso_local i32 @set_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @clr_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @invert_screen(%struct.vc_data*, i32, i32, i32) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @gotoxay(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
