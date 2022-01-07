; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_ib_init_ah_from_mcmember.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_ib_init_ah_from_mcmember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_ah_attr = type { %struct.TYPE_2__, i32, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_init_ah_from_mcmember(%struct.ib_device* %0, i8* %1, %struct.ib_sa_mcmember_rec* %2, %struct.ib_ah_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %9 = alloca %struct.ib_ah_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ib_sa_mcmember_rec* %2, %struct.ib_sa_mcmember_rec** %8, align 8
  store %struct.ib_ah_attr* %3, %struct.ib_ah_attr** %9, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %8, align 8
  %15 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %14, i32 0, i32 7
  %16 = call i32 @ib_find_cached_gid(%struct.ib_device* %13, i32* %15, i8** %12, i64* %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %76

21:                                               ; preds = %4
  %22 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %23 = call i32 @memset(%struct.ib_ah_attr* %22, i32 0, i32 56)
  %24 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %8, align 8
  %25 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be16_to_cpu(i32 %26)
  %28 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %29 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %8, align 8
  %31 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %34 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %37 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %8, align 8
  %39 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %42 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @IB_AH_GRH, align 4
  %44 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %45 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %8, align 8
  %47 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %50 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 8
  %52 = load i64, i64* %11, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %55 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i8* %53, i8** %56, align 8
  %57 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %8, align 8
  %58 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %62 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %8, align 8
  %65 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %68 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %8, align 8
  %71 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %9, align 8
  %74 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %21, %19
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @ib_find_cached_gid(%struct.ib_device*, i32*, i8**, i64*) #1

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
