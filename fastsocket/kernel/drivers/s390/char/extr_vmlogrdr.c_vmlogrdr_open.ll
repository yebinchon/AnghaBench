; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmlogrdr_priv_t = type { i32, i32, i32*, i32, i64, i64, i64, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, i32*, %struct.vmlogrdr_priv_t* }

@MAXMINOR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sys_ser = common dso_local global %struct.vmlogrdr_priv_t* null, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@vmlogrdr_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"vmlogrdr: failed to start recording automatically\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@vmlogrdr_iucv_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"vmlogrdr: iucv connection to %s failed with rc %i \0A\00", align 1
@conn_wait_queue = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vmlogrdr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmlogrdr_priv_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.vmlogrdr_priv_t* null, %struct.vmlogrdr_priv_t** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAXMINOR, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %161

18:                                               ; preds = %2
  %19 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** @sys_ser, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %19, i64 %21
  store %struct.vmlogrdr_priv_t* %22, %struct.vmlogrdr_priv_t** %7, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @ENOSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %161

32:                                               ; preds = %18
  %33 = call i32 (...) @lock_kernel()
  %34 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %35 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %34, i32 0, i32 8
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %38 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %43 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %42, i32 0, i32 8
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = call i32 (...) @unlock_kernel()
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %161

48:                                               ; preds = %32
  %49 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %50 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %52 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %54 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %56 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %55, i32 0, i32 9
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %59 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %61 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %60, i32 0, i32 8
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 2
  store %struct.vmlogrdr_priv_t* %63, %struct.vmlogrdr_priv_t** %65, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 1
  store i32* @vmlogrdr_fops, i32** %67, align 8
  %68 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %69 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %48
  %73 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %74 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %75 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t* %73, i32 1, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 @pr_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %72
  br label %83

83:                                               ; preds = %82, %48
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32* @iucv_path_alloc(i32 10, i32 0, i32 %84)
  %86 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %87 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  %88 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %89 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %155

93:                                               ; preds = %83
  %94 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %95 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %98 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %101 = call i32 @iucv_path_connect(i32* %96, i32* @vmlogrdr_iucv_handler, i32 %99, i32* null, i32* null, %struct.vmlogrdr_priv_t* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %106 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108)
  br label %148

110:                                              ; preds = %93
  %111 = load i32, i32* @conn_wait_queue, align 4
  %112 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %113 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %118 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %116, %110
  %122 = phi i1 [ true, %110 ], [ %120, %116 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @wait_event(i32 %111, i32 %123)
  %125 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %126 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %136

130:                                              ; preds = %121
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = load %struct.file*, %struct.file** %5, align 8
  %133 = call i32 @nonseekable_open(%struct.inode* %131, %struct.file* %132)
  store i32 %133, i32* %9, align 4
  %134 = call i32 (...) @unlock_kernel()
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %3, align 4
  br label %161

136:                                              ; preds = %129
  %137 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %138 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %143 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %144 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t* %142, i32 0, i32 %145)
  br label %147

147:                                              ; preds = %141, %136
  br label %148

148:                                              ; preds = %147, %104
  %149 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %150 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @kfree(i32* %151)
  %153 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %154 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %153, i32 0, i32 2
  store i32* null, i32** %154, align 8
  br label %155

155:                                              ; preds = %148, %92
  %156 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %157 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  %158 = call i32 (...) @unlock_kernel()
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %155, %130, %41, %29, %15
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t*, i32, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32* @iucv_path_alloc(i32, i32, i32) #1

declare dso_local i32 @iucv_path_connect(i32*, i32*, i32, i32*, i32*, %struct.vmlogrdr_priv_t*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
