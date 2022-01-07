; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CARL9170_CMD_ASYNC_FLAG = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no command feedback received (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"carl9170 cmd: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@CARL9170_RR_COMMAND_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_exec_cmd(%struct.ar9170* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar9170*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %18 = call i32 @IS_ACCEPTING_CMD(%struct.ar9170* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %134

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CARL9170_CMD_ASYNC_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 (...) @might_sleep()
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %33 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %38 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %30
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %46 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = icmp ne i8* %44, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %53 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @memcpy(i64 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %43, %30
  %60 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %61 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %60, i32 0, i32 1
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load i8*, i8** %13, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %66 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %69 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %71 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %74 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %75 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %74, i32 0, i32 3
  %76 = call i32 @__carl9170_exec_cmd(%struct.ar9170* %73, %struct.TYPE_7__* %75, i32 0)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @CARL9170_CMD_ASYNC_FLAG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %59
  %82 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %83 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %82, i32 0, i32 5
  %84 = load i32, i32* @HZ, align 4
  %85 = call i32 @wait_for_completion_timeout(i32* %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @ETIMEDOUT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %102

91:                                               ; preds = %81
  %92 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %93 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EMSGSIZE, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %14, align 4
  br label %102

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %59
  store i32 0, i32* %7, align 4
  br label %134

102:                                              ; preds = %97, %88
  %103 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %104 = call i64 @IS_STARTED(%struct.ar9170* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %108 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %107, i32 0, i32 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %114 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %115 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %114, i32 0, i32 3
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 4
  %118 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %113, %struct.TYPE_7__* %115, i32 %117)
  %119 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %120 = load i32, i32* @CARL9170_RR_COMMAND_TIMEOUT, align 4
  %121 = call i32 @carl9170_restart(%struct.ar9170* %119, i32 %120)
  br label %122

122:                                              ; preds = %106, %102
  %123 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %124 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %123, i32 0, i32 1
  %125 = call i32 @spin_lock_bh(i32* %124)
  %126 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %127 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  %128 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %129 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %131 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %130, i32 0, i32 1
  %132 = call i32 @spin_unlock_bh(i32* %131)
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %122, %101, %20
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @IS_ACCEPTING_CMD(%struct.ar9170*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__carl9170_exec_cmd(%struct.ar9170*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @IS_STARTED(%struct.ar9170*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @carl9170_restart(%struct.ar9170*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
