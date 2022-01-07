; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_1_rdev_size_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_1_rdev_size_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, i64, i64, i64, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.mdp_superblock_1 = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.md_rdev*, i64)* @super_1_rdev_size_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @super_1_rdev_size_change(%struct.md_rdev* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mdp_superblock_1*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i64 0, i64* %3, align 8
  br label %140

20:                                               ; preds = %11, %2
  %21 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %140

29:                                               ; preds = %20
  %30 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %31 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %34 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %29
  %38 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %39 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %38, i32 0, i32 7
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i_size_read(i32 %42)
  %44 = ashr i32 %43, 9
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %7, align 8
  %46 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %37
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %53
  br label %103

60:                                               ; preds = %29
  %61 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %62 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i64 0, i64* %3, align 8
  br label %140

69:                                               ; preds = %60
  %70 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %71 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %70, i32 0, i32 7
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @i_size_read(i32 %74)
  %76 = ashr i32 %75, 9
  %77 = sub nsw i32 %76, 16
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = and i64 %79, -8
  store i64 %80, i64* %8, align 8
  %81 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %82 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %87 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %85, %88
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %69
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92, %69
  %97 = load i64, i64* %7, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %101 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %59
  %104 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %105 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.mdp_superblock_1* @page_address(i32 %106)
  store %struct.mdp_superblock_1* %107, %struct.mdp_superblock_1** %6, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @cpu_to_le64(i64 %108)
  %110 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %111 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %113 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %116 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %118 = call i32 @calc_sb_1_csum(%struct.mdp_superblock_1* %117)
  %119 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %120 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %122 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %121, i32 0, i32 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %125 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %126 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %129 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %132 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @md_super_write(%struct.TYPE_7__* %123, %struct.md_rdev* %124, i64 %127, i32 %130, i32 %133)
  %135 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %136 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %135, i32 0, i32 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = call i32 @md_super_wait(%struct.TYPE_7__* %137)
  %139 = load i64, i64* %5, align 8
  store i64 %139, i64* %3, align 8
  br label %140

140:                                              ; preds = %103, %68, %28, %19
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

declare dso_local i32 @i_size_read(i32) #1

declare dso_local %struct.mdp_superblock_1* @page_address(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @calc_sb_1_csum(%struct.mdp_superblock_1*) #1

declare dso_local i32 @md_super_write(%struct.TYPE_7__*, %struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @md_super_wait(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
