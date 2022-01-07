; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_set_ip_frag_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_set_ip_frag_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.niu_classifier, %struct.niu_parent* }
%struct.niu_classifier = type { i32, i32 }
%struct.niu_parent = type { %struct.niu_tcam_entry* }
%struct.niu_tcam_entry = type { i32, i32, i8**, i8** }

@TCAM_V4KEY1_NOPORT = common dso_local global i8* null, align 8
@TCAM_ASSOCDATA_TRES_USE_OFFSET = common dso_local global i32 0, align 4
@TCAM_ASSOCDATA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_set_ip_frag_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_set_ip_frag_rule(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca %struct.niu_classifier*, align 8
  %6 = alloca %struct.niu_tcam_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 1
  %11 = load %struct.niu_parent*, %struct.niu_parent** %10, align 8
  store %struct.niu_parent* %11, %struct.niu_parent** %4, align 8
  %12 = load %struct.niu*, %struct.niu** %3, align 8
  %13 = getelementptr inbounds %struct.niu, %struct.niu* %12, i32 0, i32 0
  store %struct.niu_classifier* %13, %struct.niu_classifier** %5, align 8
  %14 = load %struct.niu_classifier*, %struct.niu_classifier** %5, align 8
  %15 = getelementptr inbounds %struct.niu_classifier, %struct.niu_classifier* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %18 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %17, i32 0, i32 0
  %19 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %19, i64 %21
  store %struct.niu_tcam_entry* %22, %struct.niu_tcam_entry** %6, align 8
  %23 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %24 = call i32 @memset(%struct.niu_tcam_entry* %23, i32 0, i32 24)
  %25 = load i8*, i8** @TCAM_V4KEY1_NOPORT, align 8
  %26 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %27 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* %25, i8** %29, align 8
  %30 = load i8*, i8** @TCAM_V4KEY1_NOPORT, align 8
  %31 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %32 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* @TCAM_ASSOCDATA_TRES_USE_OFFSET, align 4
  %36 = load i32, i32* @TCAM_ASSOCDATA_OFFSET_SHIFT, align 4
  %37 = shl i32 0, %36
  %38 = or i32 %35, %37
  %39 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %40 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.niu*, %struct.niu** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %44 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %43, i32 0, i32 3
  %45 = load i8**, i8*** %44, align 8
  %46 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %47 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = call i32 @tcam_write(%struct.niu* %41, i32 %42, i8** %45, i8** %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %1
  %55 = load %struct.niu*, %struct.niu** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %58 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @tcam_assoc_write(%struct.niu* %55, i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %54
  %66 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %67 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.niu_classifier*, %struct.niu_classifier** %5, align 8
  %69 = getelementptr inbounds %struct.niu_classifier, %struct.niu_classifier* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %63, %52
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @memset(%struct.niu_tcam_entry*, i32, i32) #1

declare dso_local i32 @tcam_write(%struct.niu*, i32, i8**, i8**) #1

declare dso_local i32 @tcam_assoc_write(%struct.niu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
