; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_dtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.crypt_config* }
%struct.crypt_config = type { %struct.crypt_config*, %struct.crypt_config*, i64, i64, %struct.TYPE_2__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.crypt_config*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @crypt_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  store %struct.crypt_config* %6, %struct.crypt_config** %3, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  store %struct.crypt_config* null, %struct.crypt_config** %8, align 8
  %9 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %10 = icmp ne %struct.crypt_config* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %130

12:                                               ; preds = %1
  %13 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %14 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %19 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @destroy_workqueue(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %24 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %29 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @destroy_workqueue(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %34 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %39 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @bioset_free(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %44 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %49 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mempool_destroy(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %54 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %59 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @mempool_destroy(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %64 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %69 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @mempool_destroy(i64 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %74 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = icmp ne %struct.TYPE_2__* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %79 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %81, align 8
  %83 = icmp ne i32 (%struct.crypt_config*)* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %86 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %88, align 8
  %90 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %91 = call i32 %89(%struct.crypt_config* %90)
  br label %92

92:                                               ; preds = %84, %77, %72
  %93 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %94 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %99 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @IS_ERR(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %105 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @crypto_free_ablkcipher(i64 %106)
  br label %108

108:                                              ; preds = %103, %97, %92
  %109 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %110 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %115 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %116 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dm_put_device(%struct.dm_target* %114, i64 %117)
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %121 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %120, i32 0, i32 1
  %122 = load %struct.crypt_config*, %struct.crypt_config** %121, align 8
  %123 = call i32 @kzfree(%struct.crypt_config* %122)
  %124 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %125 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %124, i32 0, i32 0
  %126 = load %struct.crypt_config*, %struct.crypt_config** %125, align 8
  %127 = call i32 @kzfree(%struct.crypt_config* %126)
  %128 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %129 = call i32 @kzfree(%struct.crypt_config* %128)
  br label %130

130:                                              ; preds = %119, %11
  ret void
}

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @bioset_free(i64) #1

declare dso_local i32 @mempool_destroy(i64) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @crypto_free_ablkcipher(i64) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i64) #1

declare dso_local i32 @kzfree(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
