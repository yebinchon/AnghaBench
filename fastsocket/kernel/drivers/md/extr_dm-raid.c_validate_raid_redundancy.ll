; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_validate_raid_redundancy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_validate_raid_redundancy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@In_sync = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @validate_raid_redundancy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_raid_redundancy(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %12 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %9
  %17 = load i32, i32* @In_sync, align 4
  %18 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %19 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i32 %17, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %16
  %29 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %30 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28, %16
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %9

46:                                               ; preds = %9
  %47 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %48 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %137 [
    i32 1, label %52
    i32 4, label %61
    i32 5, label %61
    i32 6, label %61
    i32 10, label %71
  ]

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %55 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp uge i32 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %145

60:                                               ; preds = %52
  br label %144

61:                                               ; preds = %46, %46, %46
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %64 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ugt i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %145

70:                                               ; preds = %61
  br label %144

71:                                               ; preds = %46
  %72 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %73 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @raid10_md_layout_to_copies(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %144

81:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %133, %81
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %85 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = mul i32 %87, %88
  %90 = icmp ult i32 %83, %89
  br i1 %90, label %91, label %136

91:                                               ; preds = %82
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %7, align 4
  %94 = urem i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %91
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %100 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = urem i32 %98, %102
  store i32 %103, i32* %8, align 4
  %104 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %105 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %97
  %115 = load i32, i32* @In_sync, align 4
  %116 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %117 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = call i32 @test_bit(i32 %115, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %114, %97
  %127 = load i32, i32* %6, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp uge i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %145

132:                                              ; preds = %126, %114
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %82

136:                                              ; preds = %82
  br label %144

137:                                              ; preds = %46
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %148

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %136, %80, %70, %60
  store i32 0, i32* %2, align 4
  br label %148

145:                                              ; preds = %131, %69, %59
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %145, %144, %140
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @raid10_md_layout_to_copies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
