; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capifs.c_capifs_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capifs.c_capifs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"uid=%i%c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gid=%i%c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mode=%o%c\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"capifs: called with bogus options\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @capifs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capifs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 384, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kstrdup(i8* %17, i32 %18)
  store i8* %19, i8** %14, align 8
  store i8* null, i8** %13, align 8
  br label %20

20:                                               ; preds = %57, %27, %3
  %21 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %20

28:                                               ; preds = %23
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %15, i8* %16)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %10, align 4
  br label %57

34:                                               ; preds = %28
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %15, i8* %16)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %11, align 4
  br label %56

40:                                               ; preds = %34
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %15, i8* %16)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @S_IFMT, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %12, align 4
  br label %55

49:                                               ; preds = %40
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %81

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %32
  br label %20

58:                                               ; preds = %20
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @replace_mount_options(%struct.super_block* %66, i8* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 4
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 4
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 3), align 4
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 4), align 4
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = getelementptr inbounds %struct.super_block, %struct.super_block* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %58, %49
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @replace_mount_options(%struct.super_block*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
