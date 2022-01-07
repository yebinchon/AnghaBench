; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_process_idi_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_process_idi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"State\\B%d\\Modem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"State\\B%d\\FAX\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"State\\B%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @process_idi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_idi_info(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @strncmp(i8* %24, i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = call i32 @diva_modem_info(%struct.TYPE_13__* %30, i32 %31, %struct.TYPE_14__* %32)
  store i32 %33, i32* %3, align 4
  br label %95

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %60, %38
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @strncmp(i8* %49, i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = call i32 @diva_fax_info(%struct.TYPE_13__* %55, i32 %56, %struct.TYPE_14__* %57)
  store i32 %58, i32* %3, align 4
  br label %95

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %85, %63
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %67
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @strncmp(i8* %74, i8* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = call i32 @diva_line_info(%struct.TYPE_13__* %80, i32 %81, %struct.TYPE_14__* %82)
  store i32 %83, i32* %3, align 4
  br label %95

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  br label %67

88:                                               ; preds = %67
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = call i32 @diva_ifc_statistics(%struct.TYPE_13__* %89, %struct.TYPE_14__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %95

94:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %93, %79, %54, %29
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @diva_modem_info(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @diva_fax_info(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @diva_line_info(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @diva_ifc_statistics(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
