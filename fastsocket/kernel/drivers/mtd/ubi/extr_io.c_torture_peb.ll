; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_torture_peb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_torture_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"run torture test for PEB %d\00", align 1
@patterns = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"erased PEB %d, but a non-0xFF byte found\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"pattern %x checking failed for PEB %d\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"PEB %d passed torture test, do not mark it a bad\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"read problems on freshly erased PEB %d, must be bad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @torture_peb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @torture_peb(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ubi_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** @patterns, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ubi_assert(i32 %14)
  %16 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %17 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %135, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %138

23:                                               ; preds = %19
  %24 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @do_sync_erase(%struct.ubi_device* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %142

30:                                               ; preds = %23
  %31 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %32 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %37 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ubi_io_read(%struct.ubi_device* %31, i32 %34, i32 %35, i32 0, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %142

43:                                               ; preds = %30
  %44 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %45 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %48 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @check_pattern(i32 %46, i32 255, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i8*, i32, ...) @ubi_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %142

58:                                               ; preds = %43
  %59 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %60 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @patterns, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %68 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memset(i32 %61, i32 %66, i32 %69)
  %71 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %72 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %73 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %77 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ubi_io_write(%struct.ubi_device* %71, i32 %74, i32 %75, i32 0, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %58
  br label %142

83:                                               ; preds = %58
  %84 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %85 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** @patterns, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %94 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @memset(i32 %86, i32 %92, i32 %95)
  %97 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %98 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %99 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %103 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ubi_io_read(%struct.ubi_device* %97, i32 %100, i32 %101, i32 0, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %83
  br label %142

109:                                              ; preds = %83
  %110 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %111 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** @patterns, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %119 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @check_pattern(i32 %112, i32 %117, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %109
  %125 = load i32*, i32** @patterns, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (i8*, i32, ...) @ubi_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %142

134:                                              ; preds = %109
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %19

138:                                              ; preds = %19
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @ubi_msg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %138, %124, %108, %82, %53, %42, %29
  %143 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %144 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @EBADMSG, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %149, %142
  %155 = load i32, i32* %4, align 4
  %156 = call i32 (i8*, i32, ...) @ubi_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @ubi_msg(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_sync_erase(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @check_pattern(i32, i32, i32) #1

declare dso_local i32 @ubi_err(i8*, i32, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ubi_io_write(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
