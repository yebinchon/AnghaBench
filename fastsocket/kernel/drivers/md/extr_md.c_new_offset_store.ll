; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_new_offset_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_new_offset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.md_rdev*, i64)* }
%struct.md_rdev = type { i64, i64, i64, %struct.mddev* }
%struct.mddev = type { i64, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@super_types = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.md_rdev*, i8*, i64)* @new_offset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @new_offset_store(%struct.md_rdev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mddev*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %11 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %10, i32 0, i32 3
  %12 = load %struct.mddev*, %struct.mddev** %11, align 8
  store %struct.mddev* %12, %struct.mddev** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @kstrtoull(i8* %13, i32 10, i64* %8)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %136

19:                                               ; preds = %3
  %20 = load %struct.mddev*, %struct.mddev** %9, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* @EBUSY, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %136

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %59

34:                                               ; preds = %27
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  %46 = load %struct.mddev*, %struct.mddev** %9, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load i64, i64* @E2BIG, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %4, align 8
  br label %136

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %34
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %62 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.mddev*, %struct.mddev** %9, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* @EINVAL, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %4, align 8
  br label %136

73:                                               ; preds = %65, %59
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %76 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.mddev*, %struct.mddev** %9, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* @EINVAL, align 8
  %86 = sub i64 0, %85
  store i64 %86, i64* %4, align 8
  br label %136

87:                                               ; preds = %79, %73
  %88 = load %struct.mddev*, %struct.mddev** %9, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load %struct.mddev*, %struct.mddev** %9, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @super_types, align 8
  %99 = load %struct.mddev*, %struct.mddev** %9, align 8
  %100 = getelementptr inbounds %struct.mddev, %struct.mddev* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.md_rdev*, i64)*, i32 (%struct.md_rdev*, i64)** %103, align 8
  %105 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 %104(%struct.md_rdev* %105, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %97
  %110 = load i64, i64* @E2BIG, align 8
  %111 = sub i64 0, %110
  store i64 %111, i64* %4, align 8
  br label %136

112:                                              ; preds = %97, %92, %87
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %115 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %118 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ugt i64 %116, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load %struct.mddev*, %struct.mddev** %9, align 8
  %123 = getelementptr inbounds %struct.mddev, %struct.mddev* %122, i32 0, i32 1
  store i32 1, i32* %123, align 8
  br label %134

124:                                              ; preds = %112
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %127 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.mddev*, %struct.mddev** %9, align 8
  %132 = getelementptr inbounds %struct.mddev, %struct.mddev* %131, i32 0, i32 1
  store i32 0, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %124
  br label %134

134:                                              ; preds = %133, %121
  %135 = load i64, i64* %7, align 8
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %134, %109, %84, %70, %54, %24, %16
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
