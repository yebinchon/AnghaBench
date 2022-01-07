; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_alloc_l2e.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_alloc_l2e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i64, i64, %struct.l2t_entry*, %struct.l2t_entry*, i32 }
%struct.l2t_data = type { %struct.l2t_entry*, i32, %struct.l2t_entry* }

@L2T_SIZE = common dso_local global i64 0, align 8
@L2T_STATE_SWITCHING = common dso_local global i64 0, align 8
@L2T_STATE_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2t_entry* (%struct.l2t_data*)* @alloc_l2e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2t_entry* @alloc_l2e(%struct.l2t_data* %0) #0 {
  %2 = alloca %struct.l2t_entry*, align 8
  %3 = alloca %struct.l2t_data*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  %5 = alloca %struct.l2t_entry*, align 8
  %6 = alloca %struct.l2t_entry**, align 8
  store %struct.l2t_data* %0, %struct.l2t_data** %3, align 8
  %7 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %8 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %7, i32 0, i32 1
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.l2t_entry* null, %struct.l2t_entry** %2, align 8
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %14 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %13, i32 0, i32 2
  %15 = load %struct.l2t_entry*, %struct.l2t_entry** %14, align 8
  store %struct.l2t_entry* %15, %struct.l2t_entry** %5, align 8
  %16 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %17 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %16, i32 0, i32 0
  %18 = load %struct.l2t_entry*, %struct.l2t_entry** %17, align 8
  %19 = load i64, i64* @L2T_SIZE, align 8
  %20 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %18, i64 %19
  store %struct.l2t_entry* %20, %struct.l2t_entry** %4, align 8
  br label %21

21:                                               ; preds = %32, %12
  %22 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %23 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %24 = icmp ne %struct.l2t_entry* %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %27 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %26, i32 0, i32 4
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %49

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %34 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %33, i32 1
  store %struct.l2t_entry* %34, %struct.l2t_entry** %5, align 8
  br label %21

35:                                               ; preds = %21
  %36 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %37 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %36, i32 0, i32 0
  %38 = load %struct.l2t_entry*, %struct.l2t_entry** %37, align 8
  store %struct.l2t_entry* %38, %struct.l2t_entry** %5, align 8
  br label %39

39:                                               ; preds = %45, %35
  %40 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %41 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %40, i32 0, i32 4
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %47 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %46, i32 1
  store %struct.l2t_entry* %47, %struct.l2t_entry** %5, align 8
  br label %39

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %30
  %50 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %51 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %50, i64 1
  %52 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %53 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %52, i32 0, i32 2
  store %struct.l2t_entry* %51, %struct.l2t_entry** %53, align 8
  %54 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %55 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %54, i32 0, i32 1
  %56 = call i32 @atomic_dec(i32* %55)
  %57 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %58 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %49
  %63 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %64 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %63, i32 0, i32 0
  %65 = load %struct.l2t_entry*, %struct.l2t_entry** %64, align 8
  %66 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %67 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %65, i64 %68
  %70 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %69, i32 0, i32 3
  store %struct.l2t_entry** %70, %struct.l2t_entry*** %6, align 8
  br label %71

71:                                               ; preds = %88, %62
  %72 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %73 = load %struct.l2t_entry*, %struct.l2t_entry** %72, align 8
  %74 = icmp ne %struct.l2t_entry* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %77 = load %struct.l2t_entry*, %struct.l2t_entry** %76, align 8
  %78 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %79 = icmp eq %struct.l2t_entry* %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %82 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %81, i32 0, i32 2
  %83 = load %struct.l2t_entry*, %struct.l2t_entry** %82, align 8
  %84 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  store %struct.l2t_entry* %83, %struct.l2t_entry** %84, align 8
  %85 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %86 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %85, i32 0, i32 2
  store %struct.l2t_entry* null, %struct.l2t_entry** %86, align 8
  br label %92

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %90 = load %struct.l2t_entry*, %struct.l2t_entry** %89, align 8
  %91 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %90, i32 0, i32 2
  store %struct.l2t_entry** %91, %struct.l2t_entry*** %6, align 8
  br label %71

92:                                               ; preds = %80, %71
  br label %93

93:                                               ; preds = %92, %49
  %94 = load i64, i64* @L2T_STATE_UNUSED, align 8
  %95 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %96 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  store %struct.l2t_entry* %97, %struct.l2t_entry** %2, align 8
  br label %98

98:                                               ; preds = %93, %11
  %99 = load %struct.l2t_entry*, %struct.l2t_entry** %2, align 8
  ret %struct.l2t_entry* %99
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
