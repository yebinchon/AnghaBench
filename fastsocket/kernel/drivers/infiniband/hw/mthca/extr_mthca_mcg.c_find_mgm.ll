; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mcg.c_find_mgm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mcg.c_find_mgm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_mgm = type { i32, i32 }
%struct.mthca_dev = type { i32 }
%struct.mthca_mailbox = type { %struct.mthca_mgm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MGID_HASH failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"READ_MGM failed (%d)\0A\00", align 1
@zero_gid = common dso_local global %struct.mthca_mgm* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Found zero MGID in AMGM.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_mgm*, %struct.mthca_mailbox*, i32*, i32*, i32*)* @find_mgm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_mgm(%struct.mthca_dev* %0, %struct.mthca_mgm* %1, %struct.mthca_mailbox* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mthca_dev*, align 8
  %9 = alloca %struct.mthca_mgm*, align 8
  %10 = alloca %struct.mthca_mailbox*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mthca_mailbox*, align 8
  %15 = alloca %struct.mthca_mgm*, align 8
  %16 = alloca %struct.mthca_mgm*, align 8
  %17 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %8, align 8
  store %struct.mthca_mgm* %1, %struct.mthca_mgm** %9, align 8
  store %struct.mthca_mailbox* %2, %struct.mthca_mailbox** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %19 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %18, i32 0, i32 0
  %20 = load %struct.mthca_mgm*, %struct.mthca_mgm** %19, align 8
  store %struct.mthca_mgm* %20, %struct.mthca_mgm** %15, align 8
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %21, i32 %22)
  store %struct.mthca_mailbox* %23, %struct.mthca_mailbox** %14, align 8
  %24 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %14, align 8
  %25 = call i64 @IS_ERR(%struct.mthca_mailbox* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %112

30:                                               ; preds = %6
  %31 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %14, align 8
  %32 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %31, i32 0, i32 0
  %33 = load %struct.mthca_mgm*, %struct.mthca_mgm** %32, align 8
  store %struct.mthca_mgm* %33, %struct.mthca_mgm** %16, align 8
  %34 = load %struct.mthca_mgm*, %struct.mthca_mgm** %16, align 8
  %35 = load %struct.mthca_mgm*, %struct.mthca_mgm** %9, align 8
  %36 = call i32 @memcpy(%struct.mthca_mgm* %34, %struct.mthca_mgm* %35, i32 16)
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %38 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %14, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @mthca_MGID_HASH(%struct.mthca_dev* %37, %struct.mthca_mailbox* %38, i32* %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %107

47:                                               ; preds = %30
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %12, align 8
  store i32 -1, i32* %51, align 4
  br label %52

52:                                               ; preds = %101, %47
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %57 = call i32 @mthca_READ_MGM(%struct.mthca_dev* %53, i32 %55, %struct.mthca_mailbox* %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %107

64:                                               ; preds = %52
  %65 = load %struct.mthca_mgm*, %struct.mthca_mgm** %15, align 8
  %66 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mthca_mgm*, %struct.mthca_mgm** @zero_gid, align 8
  %69 = call i32 @memcmp(i32 %67, %struct.mthca_mgm* %68, i32 16)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %64
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %79 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %77, %71
  br label %107

83:                                               ; preds = %64
  %84 = load %struct.mthca_mgm*, %struct.mthca_mgm** %15, align 8
  %85 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mthca_mgm*, %struct.mthca_mgm** %9, align 8
  %88 = call i32 @memcmp(i32 %86, %struct.mthca_mgm* %87, i32 16)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %107

91:                                               ; preds = %83
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %12, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.mthca_mgm*, %struct.mthca_mgm** %15, align 8
  %96 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be32_to_cpu(i32 %97)
  %99 = ashr i32 %98, 6
  %100 = load i32*, i32** %13, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %91
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %52, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %13, align 8
  store i32 -1, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %90, %82, %60, %43
  %108 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %109 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %14, align 8
  %110 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %108, %struct.mthca_mailbox* %109)
  %111 = load i32, i32* %17, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %107, %27
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @memcpy(%struct.mthca_mgm*, %struct.mthca_mgm*, i32) #1

declare dso_local i32 @mthca_MGID_HASH(%struct.mthca_dev*, %struct.mthca_mailbox*, i32*) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_READ_MGM(%struct.mthca_dev*, i32, %struct.mthca_mailbox*) #1

declare dso_local i32 @memcmp(i32, %struct.mthca_mgm*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
