; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32, i32, i32, %struct.ktermios**, %struct.tty_struct**, %struct.TYPE_3__, i32, i32, i32, i64 }
%struct.ktermios = type { i32 }
%struct.tty_struct = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TTY_DRIVER_DEVPTS_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tty_fops = common dso_local global i32 0, align 4
@tty_mutex = common dso_local global i32 0, align 4
@tty_drivers = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@TTY_DRIVER_INSTALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_register_driver(%struct.tty_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store i8** null, i8*** %7, align 8
  %8 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %9 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TTY_DRIVER_DEVPTS_MEM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %16 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %21 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8** @kzalloc(i32 %26, i32 %27)
  store i8** %28, i8*** %7, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %175

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %14, %1
  %36 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %37 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %35
  %41 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %42 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %45 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %48 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @alloc_chrdev_region(i32* %6, i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @MAJOR(i32 %54)
  %56 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %57 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %56, i32 0, i32 9
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @MINOR(i32 %58)
  %60 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %61 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %40
  br label %79

63:                                               ; preds = %35
  %64 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %65 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %68 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @MKDEV(i64 %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %73 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %76 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @register_chrdev_region(i32 %71, i32 %74, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %63, %62
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i8**, i8*** %7, align 8
  %84 = call i32 @kfree(i8** %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %175

86:                                               ; preds = %79
  %87 = load i8**, i8*** %7, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i8**, i8*** %7, align 8
  %91 = bitcast i8** %90 to %struct.tty_struct**
  %92 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %93 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %92, i32 0, i32 4
  store %struct.tty_struct** %91, %struct.tty_struct*** %93, align 8
  %94 = load i8**, i8*** %7, align 8
  %95 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %96 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %94, i64 %98
  %100 = bitcast i8** %99 to %struct.ktermios**
  %101 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %102 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %101, i32 0, i32 3
  store %struct.ktermios** %100, %struct.ktermios*** %102, align 8
  br label %108

103:                                              ; preds = %86
  %104 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %105 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %104, i32 0, i32 4
  store %struct.tty_struct** null, %struct.tty_struct*** %105, align 8
  %106 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %107 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %106, i32 0, i32 3
  store %struct.ktermios** null, %struct.ktermios*** %107, align 8
  br label %108

108:                                              ; preds = %103, %89
  %109 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %110 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %109, i32 0, i32 5
  %111 = call i32 @cdev_init(%struct.TYPE_3__* %110, i32* @tty_fops)
  %112 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %113 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %116 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %119 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %118, i32 0, i32 5
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %122 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cdev_add(%struct.TYPE_3__* %119, i32 %120, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %108
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %130 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @unregister_chrdev_region(i32 %128, i32 %131)
  %133 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %134 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %133, i32 0, i32 4
  store %struct.tty_struct** null, %struct.tty_struct*** %134, align 8
  %135 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %136 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %135, i32 0, i32 3
  store %struct.ktermios** null, %struct.ktermios*** %136, align 8
  %137 = load i8**, i8*** %7, align 8
  %138 = call i32 @kfree(i8** %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %175

140:                                              ; preds = %108
  %141 = call i32 @mutex_lock(i32* @tty_mutex)
  %142 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %143 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %142, i32 0, i32 2
  %144 = call i32 @list_add(i32* %143, i32* @tty_drivers)
  %145 = call i32 @mutex_unlock(i32* @tty_mutex)
  %146 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %147 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %163, %152
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %156 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @tty_register_device(%struct.tty_driver* %160, i32 %161, i32* null)
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %153

166:                                              ; preds = %153
  br label %167

167:                                              ; preds = %166, %140
  %168 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %169 = call i32 @proc_tty_register_driver(%struct.tty_driver* %168)
  %170 = load i32, i32* @TTY_DRIVER_INSTALLED, align 4
  %171 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %172 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %167, %127, %82, %31
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i8** @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i32) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @MKDEV(i64, i32) #1

declare dso_local i32 @register_chrdev_region(i32, i32, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_register_device(%struct.tty_driver*, i32, i32*) #1

declare dso_local i32 @proc_tty_register_driver(%struct.tty_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
