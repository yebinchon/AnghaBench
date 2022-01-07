; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_update_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_update_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_hba = type { i64, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s set %pI4.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_hba*)* @update_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_address(%struct.cxgbi_hba* %0) #0 {
  %2 = alloca %struct.cxgbi_hba*, align 8
  store %struct.cxgbi_hba* %0, %struct.cxgbi_hba** %2, align 8
  %3 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %4 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %68

7:                                                ; preds = %1
  %8 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %9 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %14 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %17 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i64 @cxgb3i_get_private_ipv4addr(%struct.TYPE_3__* %18)
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %23 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %26 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cxgb3i_set_private_ipv4addr(%struct.TYPE_3__* %24, i64 %27)
  %29 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %30 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @cxgb3i_set_private_ipv4addr(%struct.TYPE_3__* %31, i64 0)
  %33 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %34 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %39 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %38, i32 0, i32 0
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %37, i64* %39)
  br label %67

41:                                               ; preds = %12, %7
  %42 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %43 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %46 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i64 @cxgb3i_get_private_ipv4addr(%struct.TYPE_3__* %47)
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %41
  %51 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %52 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %55 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @cxgb3i_set_private_ipv4addr(%struct.TYPE_3__* %53, i64 %56)
  %58 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %59 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %64 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %63, i32 0, i32 0
  %65 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %62, i64* %64)
  br label %66

66:                                               ; preds = %50, %41
  br label %67

67:                                               ; preds = %66, %21
  br label %90

68:                                               ; preds = %1
  %69 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %70 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i64 @cxgb3i_get_private_ipv4addr(%struct.TYPE_3__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %76 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %81 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = call i32 @cxgb3i_set_private_ipv4addr(%struct.TYPE_3__* %82, i64 0)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %2, align 8
  %86 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @cxgb3i_set_private_ipv4addr(%struct.TYPE_3__* %87, i64 0)
  br label %89

89:                                               ; preds = %84, %68
  br label %90

90:                                               ; preds = %89, %67
  ret void
}

declare dso_local i64 @cxgb3i_get_private_ipv4addr(%struct.TYPE_3__*) #1

declare dso_local i32 @cxgb3i_set_private_ipv4addr(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @pr_info(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
