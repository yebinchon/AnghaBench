; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hba_setup_cid_tbls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hba_setup_cid_tbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32*, i32*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"BM_%d : Failed to allocate memory in hba_setup_cid_tbls\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"BM_%d : Failed to allocate memory inhba_setup_cid_tbls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @hba_setup_cid_tbls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hba_setup_cid_tbls(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 8, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 %11, i32 %12)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %25 = call i32 @beiscsi_log(%struct.beiscsi_hba* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %128

28:                                               ; preds = %1
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i32 %35, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %42 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %28
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %49 = call i32 @beiscsi_log(%struct.beiscsi_hba* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %51 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %55 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %128

58:                                               ; preds = %28
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %60 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kzalloc(i32 %65, i32 %66)
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %69 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %71 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %93, label %74

74:                                               ; preds = %58
  %75 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %78 = call i32 @beiscsi_log(%struct.beiscsi_hba* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %80 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %84 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %88 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %90 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %89, i32 0, i32 4
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %128

93:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %118, %93
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %97 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %94
  %102 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %103 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %113 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %101
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %94

121:                                              ; preds = %94
  %122 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %123 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %127 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %121, %74, %45, %21
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
