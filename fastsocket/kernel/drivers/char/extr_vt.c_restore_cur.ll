; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_restore_cur.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_restore_cur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @restore_cur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_cur(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 21
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 20
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @gotoxy(%struct.vc_data* %3, i32 %6, i32 %9)
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 18
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 19
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 17
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 14
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 13
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %1
  %61 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  br label %68

64:                                               ; preds = %1
  %65 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %63, %60 ], [ %67, %64 ]
  %70 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %71 = call i32 @set_translate(i32 %69, %struct.vc_data* %70)
  %72 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %73 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %75 = call i32 @update_attr(%struct.vc_data* %74)
  %76 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %77 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  ret void
}

declare dso_local i32 @gotoxy(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @set_translate(i32, %struct.vc_data*) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
