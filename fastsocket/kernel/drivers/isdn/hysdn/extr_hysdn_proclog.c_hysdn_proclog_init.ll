; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_proclog.c_hysdn_proclog_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_proclog.c_hysdn_proclog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.procdata = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@PROC_LOG_BASENAME = common dso_local global i8* null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@hysdn_proc_entry = common dso_local global i32 0, align 4
@log_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hysdn_proclog_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.procdata*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.procdata* @kzalloc(i32 12, i32 %4)
  store %struct.procdata* %5, %struct.procdata** %3, align 8
  %6 = icmp ne %struct.procdata* %5, null
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load %struct.procdata*, %struct.procdata** %3, align 8
  %9 = getelementptr inbounds %struct.procdata, %struct.procdata* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** @PROC_LOG_BASENAME, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sprintf(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %14)
  %16 = load %struct.procdata*, %struct.procdata** %3, align 8
  %17 = getelementptr inbounds %struct.procdata, %struct.procdata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @S_IFREG, align 4
  %20 = load i32, i32* @S_IRUGO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @S_IWUSR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @hysdn_proc_entry, align 4
  %25 = call i32 @proc_create(i32 %18, i32 %23, i32 %24, i32* @log_fops)
  %26 = load %struct.procdata*, %struct.procdata** %3, align 8
  %27 = getelementptr inbounds %struct.procdata, %struct.procdata* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.procdata*, %struct.procdata** %3, align 8
  %29 = getelementptr inbounds %struct.procdata, %struct.procdata* %28, i32 0, i32 0
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = load %struct.procdata*, %struct.procdata** %3, align 8
  %32 = bitcast %struct.procdata* %31 to i8*
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local %struct.procdata* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @proc_create(i32, i32, i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
