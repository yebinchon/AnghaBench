; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_current_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_current_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_desc = type { i32 }
%struct.device = type { i32 }
%struct.talitos_private = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.talitos_desc* }

@.str = private unnamed_addr constant [36 x i8] c"couldn't locate current descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_desc* (%struct.device*, i32)* @current_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_desc* @current_desc(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.talitos_desc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.talitos_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %9)
  store %struct.talitos_private* %10, %struct.talitos_private** %6, align 8
  %11 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %12 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %20 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @TALITOS_CDPR_LO(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i64 @in_be32(i64 %24)
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %63, %2
  %27 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %28 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %46 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %44, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %52 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %50, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.talitos_desc* null, %struct.talitos_desc** %3, align 8
  br label %78

63:                                               ; preds = %42
  br label %26

64:                                               ; preds = %26
  %65 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %66 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load %struct.talitos_desc*, %struct.talitos_desc** %76, align 8
  store %struct.talitos_desc* %77, %struct.talitos_desc** %3, align 8
  br label %78

78:                                               ; preds = %64, %60
  %79 = load %struct.talitos_desc*, %struct.talitos_desc** %3, align 8
  ret %struct.talitos_desc* %79
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @in_be32(i64) #1

declare dso_local i64 @TALITOS_CDPR_LO(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
