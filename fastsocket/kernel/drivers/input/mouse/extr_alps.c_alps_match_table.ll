; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_match_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_match_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_model_info = type { i8, i32, i32, i32, i32, i32 }
%struct.psmouse = type { i32 }
%struct.alps_data = type { i32, i32, i32, i32 }

@alps_model_data = common dso_local global %struct.alps_model_info* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.alps_data*, i8*, i8*)* @alps_match_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_match_table(%struct.psmouse* %0, %struct.alps_data* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca %struct.alps_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.alps_model_info*, align 8
  %11 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store %struct.alps_data* %1, %struct.alps_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %67, %4
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.alps_model_info*, %struct.alps_model_info** @alps_model_data, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.alps_model_info* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %12
  %18 = load %struct.alps_model_info*, %struct.alps_model_info** @alps_model_data, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.alps_model_info, %struct.alps_model_info* %18, i64 %20
  store %struct.alps_model_info* %21, %struct.alps_model_info** %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.alps_model_info*, %struct.alps_model_info** %10, align 8
  %24 = getelementptr inbounds %struct.alps_model_info, %struct.alps_model_info* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcmp(i8* %22, i32 %25, i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %66, label %28

28:                                               ; preds = %17
  %29 = load %struct.alps_model_info*, %struct.alps_model_info** %10, align 8
  %30 = getelementptr inbounds %struct.alps_model_info, %struct.alps_model_info* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.alps_model_info*, %struct.alps_model_info** %10, align 8
  %35 = getelementptr inbounds %struct.alps_model_info, %struct.alps_model_info* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 4
  %37 = zext i8 %36 to i32
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %33, %28
  %44 = load %struct.alps_model_info*, %struct.alps_model_info** %10, align 8
  %45 = getelementptr inbounds %struct.alps_model_info, %struct.alps_model_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %48 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %50 = call i32 @alps_set_defaults(%struct.alps_data* %49)
  %51 = load %struct.alps_model_info*, %struct.alps_model_info** %10, align 8
  %52 = getelementptr inbounds %struct.alps_model_info, %struct.alps_model_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %55 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.alps_model_info*, %struct.alps_model_info** %10, align 8
  %57 = getelementptr inbounds %struct.alps_model_info, %struct.alps_model_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %60 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.alps_model_info*, %struct.alps_model_info** %10, align 8
  %62 = getelementptr inbounds %struct.alps_model_info, %struct.alps_model_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %65 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %73

66:                                               ; preds = %33, %17
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %12

70:                                               ; preds = %12
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %43
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @ARRAY_SIZE(%struct.alps_model_info*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @alps_set_defaults(%struct.alps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
