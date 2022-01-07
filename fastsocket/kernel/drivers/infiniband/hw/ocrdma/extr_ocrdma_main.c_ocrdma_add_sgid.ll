; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_add_sgid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_add_sgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { i32 }
%struct.ocrdma_dev = type { i32, i32* }

@ocrdma_zero_sgid = common dso_local global %union.ib_gid zeroinitializer, align 4
@OCRDMA_MAX_SGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, i8*, i32, i32)* @ocrdma_add_sgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_add_sgid(%struct.ocrdma_dev* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ib_gid, align 4
  %12 = alloca i64, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i32 @memset(%union.ib_gid* @ocrdma_zero_sgid, i32 0, i32 4)
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @ocrdma_build_sgid_mac(%union.ib_gid* %11, i8* %14, i32 %15, i32 %16)
  %18 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %19 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %63, %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @OCRDMA_MAX_SGID, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %22
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %28 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @memcmp(i32* %32, %union.ib_gid* @ocrdma_zero_sgid, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %26
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %37 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @memcpy(i32* %41, %union.ib_gid* %11, i32 4)
  %43 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %44 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  store i32 1, i32* %5, align 4
  br label %71

47:                                               ; preds = %26
  %48 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %49 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @memcmp(i32* %53, %union.ib_gid* %11, i32 4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %47
  %57 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %58 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  store i32 0, i32* %5, align 4
  br label %71

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %22

66:                                               ; preds = %22
  %67 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %68 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %56, %35
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%union.ib_gid*, i32, i32) #1

declare dso_local i32 @ocrdma_build_sgid_mac(%union.ib_gid*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcmp(i32*, %union.ib_gid*, i32) #1

declare dso_local i32 @memcpy(i32*, %union.ib_gid*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
