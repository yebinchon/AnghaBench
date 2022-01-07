; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_select_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.cfq_data = type { i64, i32, i32, %struct.cfq_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_queue* (%struct.cfq_data*)* @cfq_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_queue* @cfq_select_queue(%struct.cfq_data* %0) #0 {
  %2 = alloca %struct.cfq_queue*, align 8
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_queue* null, %struct.cfq_queue** %5, align 8
  %6 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %7 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %6, i32 0, i32 3
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  store %struct.cfq_queue* %8, %struct.cfq_queue** %4, align 8
  %9 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %10 = icmp ne %struct.cfq_queue* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %124

12:                                               ; preds = %1
  %13 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %14 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.cfq_queue* null, %struct.cfq_queue** %2, align 8
  br label %136

18:                                               ; preds = %12
  %19 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %20 = call i64 @cfq_cfqq_wait_busy(%struct.cfq_queue* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %24 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %23, i32 0, i32 3
  %25 = call i64 @RB_EMPTY_ROOT(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %121

28:                                               ; preds = %22, %18
  %29 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %30 = call i64 @cfq_slice_used(%struct.cfq_queue* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %34 = call i32 @cfq_cfqq_must_dispatch(%struct.cfq_queue* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %32
  %37 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %38 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %45 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %44, i32 0, i32 3
  %46 = call i64 @RB_EMPTY_ROOT(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %50 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %55 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %56 = call i64 @cfq_should_idle(%struct.cfq_data* %54, %struct.cfq_queue* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store %struct.cfq_queue* null, %struct.cfq_queue** %4, align 8
  br label %134

59:                                               ; preds = %53, %48, %43, %36
  br label %100

60:                                               ; preds = %32, %28
  %61 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %62 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %61, i32 0, i32 3
  %63 = call i64 @RB_EMPTY_ROOT(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %134

66:                                               ; preds = %60
  %67 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %68 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %69 = call %struct.cfq_queue* @cfq_close_cooperator(%struct.cfq_data* %67, %struct.cfq_queue* %68)
  store %struct.cfq_queue* %69, %struct.cfq_queue** %5, align 8
  %70 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %71 = icmp ne %struct.cfq_queue* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %74 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %79 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %80 = call i32 @cfq_setup_merge(%struct.cfq_queue* %78, %struct.cfq_queue* %79)
  br label %81

81:                                               ; preds = %77, %72
  br label %121

82:                                               ; preds = %66
  %83 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %84 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %83, i32 0, i32 1
  %85 = call i64 @timer_pending(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store %struct.cfq_queue* null, %struct.cfq_queue** %4, align 8
  br label %134

88:                                               ; preds = %82
  %89 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %90 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %95 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %96 = call i64 @cfq_should_idle(%struct.cfq_data* %94, %struct.cfq_queue* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store %struct.cfq_queue* null, %struct.cfq_queue** %4, align 8
  br label %134

99:                                               ; preds = %93, %88
  br label %100

100:                                              ; preds = %99, %59
  %101 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %102 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %107 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %114 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store %struct.cfq_queue* null, %struct.cfq_queue** %4, align 8
  br label %134

120:                                              ; preds = %112, %105, %100
  br label %121

121:                                              ; preds = %120, %81, %27
  %122 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %123 = call i32 @cfq_slice_expired(%struct.cfq_data* %122, i32 0)
  br label %124

124:                                              ; preds = %121, %11
  %125 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %126 = icmp ne %struct.cfq_queue* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %129 = call i32 @cfq_choose_cfqg(%struct.cfq_data* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %132 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %133 = call %struct.cfq_queue* @cfq_set_active_queue(%struct.cfq_data* %131, %struct.cfq_queue* %132)
  store %struct.cfq_queue* %133, %struct.cfq_queue** %4, align 8
  br label %134

134:                                              ; preds = %130, %119, %98, %87, %65, %58
  %135 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  store %struct.cfq_queue* %135, %struct.cfq_queue** %2, align 8
  br label %136

136:                                              ; preds = %134, %17
  %137 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  ret %struct.cfq_queue* %137
}

declare dso_local i64 @cfq_cfqq_wait_busy(%struct.cfq_queue*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i64 @cfq_slice_used(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_cfqq_must_dispatch(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_should_idle(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local %struct.cfq_queue* @cfq_close_cooperator(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_setup_merge(%struct.cfq_queue*, %struct.cfq_queue*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @cfq_slice_expired(%struct.cfq_data*, i32) #1

declare dso_local i32 @cfq_choose_cfqg(%struct.cfq_data*) #1

declare dso_local %struct.cfq_queue* @cfq_set_active_queue(%struct.cfq_data*, %struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
