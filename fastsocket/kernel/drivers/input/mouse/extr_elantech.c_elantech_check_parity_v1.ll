; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_check_parity_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_check_parity_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data* }
%struct.elantech_data = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_check_parity_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_check_parity_v1(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.elantech_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.elantech_data*, %struct.elantech_data** %9, align 8
  store %struct.elantech_data* %10, %struct.elantech_data** %3, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %15 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 32
  %24 = ashr i32 %23, 5
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %5, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 16
  %31 = ashr i32 %30, 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %6, align 1
  br label %48

33:                                               ; preds = %1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 16
  %39 = ashr i32 %38, 4
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 32
  %46 = ashr i32 %45, 5
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %6, align 1
  br label %48

48:                                               ; preds = %33, %18
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 4
  %54 = ashr i32 %53, 2
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %7, align 1
  %56 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %57 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %48
  %70 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %71 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* %6, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %69
  %84 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %85 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* %7, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br label %97

97:                                               ; preds = %83, %69, %48
  %98 = phi i1 [ false, %69 ], [ false, %48 ], [ %96, %83 ]
  %99 = zext i1 %98 to i32
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
