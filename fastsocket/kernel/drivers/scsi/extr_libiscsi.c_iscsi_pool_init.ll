; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_pool_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_pool = type { i32, i8**, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_pool_init(%struct.iscsi_pool* %0, i32 %1, i8*** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_pool* %0, %struct.iscsi_pool** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8*** %2, i8**** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %12 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %13 = call i32 @memset(%struct.iscsi_pool* %12, i32 0, i32 24)
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i8***, i8**** %8, align 8
  %18 = icmp ne i8*** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 %28, i32 %29)
  %31 = bitcast i8* %30 to i8**
  %32 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %33 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %32, i32 0, i32 1
  store i8** %31, i8*** %33, align 8
  %34 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = icmp eq i8** %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %131

41:                                               ; preds = %22
  %42 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = bitcast i8** %44 to i8*
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kfifo_init(i8* %45, i32 %49, i32 %50, i32* null)
  %52 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %55 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %61 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  br label %126

62:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kzalloc(i32 %68, i32 %69)
  %71 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %72 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %70, i8** %76, align 8
  %77 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %78 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %67
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %88 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %126

89:                                               ; preds = %67
  %90 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %91 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = bitcast i8** %98 to i8*
  %100 = call i32 @__kfifo_put(i32* %92, i8* %99, i32 8)
  br label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %63

104:                                              ; preds = %63
  %105 = load i8***, i8**** %8, align 8
  %106 = icmp ne i8*** %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %109 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8***, i8**** %8, align 8
  store i8** %113, i8*** %114, align 8
  %115 = load i8***, i8**** %8, align 8
  %116 = load i8**, i8*** %115, align 8
  %117 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %118 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %117, i32 0, i32 1
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i8** %116, i8** %119, i32 %123)
  br label %125

125:                                              ; preds = %107, %104
  store i32 0, i32* %5, align 4
  br label %131

126:                                              ; preds = %85, %59
  %127 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %128 = call i32 @iscsi_pool_free(%struct.iscsi_pool* %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %126, %125, %38
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @memset(%struct.iscsi_pool*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32* @kfifo_init(i8*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @__kfifo_put(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @iscsi_pool_free(%struct.iscsi_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
